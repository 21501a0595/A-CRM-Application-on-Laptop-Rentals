public class LaptopBookingHandler {
    public static void sendEmailNotification(String emailAddress) {
    if (String.isBlank(emailAddress) || !emailAddress.contains('@')) {
        System.debug('Invalid email address: ' + emailAddress);
        return; // Exit method to prevent email from being sent.
    }

    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    mail.setToAddresses(new String[] { emailAddress });
    mail.setSubject('Laptop Booking Notification');
    mail.setPlainTextBody('Your laptop booking request has been processed.');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}

}