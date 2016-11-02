/**
 * Created by andrei on 24.07.2016.
 */
//myDropDown arata lista medicilor , 'value' returneaza IDMedic selectat
        $(document).ready(function () {
//DocId salveaza idMedic in variabila js in afara functiei ddslick

            $('#myDropdown').ddslick({
                width: ' 100%',
                background: '#e8f5f4',
                onSelected: function(selectedData){
                    var value = selectedData.selectedData.value;
                    DoctorId = value;
                    //$("#selectDoc").val(value);
                }
            });
        });

