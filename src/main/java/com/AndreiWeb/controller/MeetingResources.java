package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ClientDao;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.MeetingService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by andrei on 15.05.2016.
 */
@Controller
@RequestMapping("/rest/meeting")
public class MeetingResources {

    @Autowired
    private MeetingDao meetingDao;

    @Autowired
    private ClientService clientService;

    @Autowired
    private UsersService usersService;

    @Autowired
    private UsersDao usersDao;

    @Autowired
    private DoctorDao doctorDao;

    @Autowired
    private ClientDao clientDao;

    @Autowired
    private MeetingService meetingService;


    @RequestMapping("/{meetingId}")
    public @ResponseBody
    Meeting getMeetingById (@PathVariable(value = "meetingId") int meetingId) {
        return meetingDao.getMeetingById(meetingId);

    }

    @RequestMapping(value = "/add/{meetingId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value ="meetingId") int meetingId, @AuthenticationPrincipal User activeUser) {

        Users users =    usersService.getUsersByUsername(activeUser.getUsername());

        Client client = clientService.getClientById(users.getClient().getClientId());

        Meeting meeting = meetingService.getMeetingById(meetingId);





        client.getMeetings().add(meeting);
        meeting.setClient(client);
        meetingService.addMeeting(meeting);

    }

//    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
//    @ResponseStatus(value = HttpStatus.NO_CONTENT)
//    public void removeItem (@PathVariable(value = "productId") int productId) {
//        CartItem cartItem = cartItemService.getCartItemByProductId(productId);
//        cartItemService.removeCartItem(cartItem);
//
//    }
//
//    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
//    @ResponseStatus(value = HttpStatus.NO_CONTENT)
//    public void clearCart(@PathVariable(value = "cartId") int cartId) {
//        Cart cart = cartService.getCartById(cartId);
//        cartItemService.removeAllCartItems(cart);
//    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors (Exception e) {}
}




