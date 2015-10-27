package airline.managerment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

/**
 * @author Lê Duy Thanh
 *
 */
@Entity
@Table(name = "PERSON")
public class Person {
    private Integer personId;
    private String personNameTitle;
    private String personName;
    private String personBirthday;
    private String personEmail;
    private String personAddress;
    private String personNationality;
    private String personGender;
    private String personPhone;
    private String personHomePhone;
    private String personOfficePhone;
    private String personJob;
    private String personIdentityNumber;
    private String personBankAccountNumber;
    private Integer personApplyYear;
    private String personPosition;
    private String personNotes;
    private String personPassport;
    private String personExpirationDate;
    private String personSessionId;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PERSON_ID")
    public Integer getPersonId() {
        return personId;
    }

    @Column(name = "PERSON_NAME_TITLE")
    public String getPersonNameTitle() {
        return personNameTitle;
    }

    @Column(name = "PERSON_NAME")
    public String getPersonName() {
        return personName;
    }

    @Column(name = "PERSON_BIRTHDAY")
    public String getPersonBirthday() {
        return personBirthday;
    }

    @Column(name = "PERSON_EMAIL")
    public String getPersonEmail() {
        return personEmail;
    }

    @Column(name = "PERSON_ADDRESS")
    public String getPersonAddress() {
        return personAddress;
    }

    @Column(name = "PERSON_NATIONALITY")
    public String getPersonNationality() {
        return personNationality;
    }

    @Column(name = "PERSON_GENDER")
    public String getPersonGender() {
        return personGender;
    }

    @Column(name = "PERSON_PHONE")
    public String getPersonPhone() {
        return personPhone;
    }

    @Column(name = "PERSON_HOMEPHONE")
    public String getPersonHomePhone() {
        return personHomePhone;
    }

    @Column(name = "PERSON_OFFICEPHONE")
    public String getPersonOfficePhone() {
        return personOfficePhone;
    }

    @Column(name = "PERSON_JOB")
    public String getPersonJob() {
        return personJob;
    }

    @Column(name = "PERSON_IDENTITY_NUMBER")
    public String getPersonIdentityNumber() {
        return personIdentityNumber;
    }

    @Column(name = "PERSON_BANK_ACCOUNT_NUMBER")
    public String getPersonBankAccountNumber() {
        return personBankAccountNumber;
    }

    @Column(name = "PERSON_APPLYYEAR")
    public Integer getPersonApplyYear() {
        return personApplyYear;
    }

    @Column(name = "PERSON_POSITION")
    public String getPersonPosition() {
        return personPosition;
    }

    @Column(name = "PERSON_NOTES")
    public String getPersonNotes() {
        return personNotes;
    }

    @Column(name = "PASSPORT")
    public String getPersonPassport() {
        return personPassport;
    }

    @Column(name = "EXPIRATION_DATE")
    public String getPersonExpirationDate() {
        return personExpirationDate;
    }

    @Column(name = "PERSON_SESSION_ID")
    public String getPersonSessionId() {
        return personSessionId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public void setPersonNameTitle(String personNameTitle) {
        this.personNameTitle = personNameTitle;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public void setPersonBirthday(String personBirthday) {
        this.personBirthday = personBirthday;
    }

    public void setPersonEmail(String personEmail) {
        this.personEmail = personEmail;
    }

    public void setPersonAddress(String personAddress) {
        this.personAddress = personAddress;
    }

    public void setPersonNationality(String personNationality) {
        this.personNationality = personNationality;
    }

    public void setPersonGender(String personGender) {
        this.personGender = personGender;
    }

    public void setPersonPhone(String personPhone) {
        this.personPhone = personPhone;
    }

    public void setPersonHomePhone(String personHomePhone) {
        this.personHomePhone = personHomePhone;
    }

    public void setPersonOfficePhone(String personOfficePhone) {
        this.personOfficePhone = personOfficePhone;
    }

    public void setPersonJob(String personJob) {
        this.personJob = personJob;
    }

    public void setPersonIdentityNumber(String personIdentityNumber) {
        this.personIdentityNumber = personIdentityNumber;
    }

    public void setPersonBankAccountNumber(String personBankAccountNumber) {
        this.personBankAccountNumber = personBankAccountNumber;
    }

    public void setPersonApplyYear(Integer personApplyYear) {
        this.personApplyYear = personApplyYear;
    }

    public void setPersonPosition(String personPosition) {
        this.personPosition = personPosition;
    }

    public void setPersonNotes(String personNotes) {
        this.personNotes = personNotes;
    }

    public void setPersonPassport(String personPassport) {
        this.personPassport = personPassport;
    }

    public void setPersonExpirationDate(String personExpirationDate) {
        this.personExpirationDate = personExpirationDate;
    }

    public void setPersonSessionId(String personSessionId) {
        this.personSessionId = personSessionId;
    }

    @Override
    public String toString() {
        return "Person [personId=" + personId + ", personNameTitle="
                + personNameTitle + ", personName=" + personName
                + ", personBirthday=" + personBirthday + ", personEmail="
                + personEmail + ", personAddress=" + personAddress
                + ", personNationality=" + personNationality
                + ", personGender=" + personGender + ", personPhone="
                + personPhone + ", personHomePhone=" + personHomePhone
                + ", personOfficePhone=" + personOfficePhone + ", personJob="
                + personJob + ", personIdentityNumber=" + personIdentityNumber
                + ", personBankAccountNumber=" + personBankAccountNumber
                + ", personApplyYear=" + personApplyYear + ", personPosition="
                + personPosition + ", personNotes=" + personNotes
                + ", personPassport=" + personPassport
                + ", personExpirationDate=" + personExpirationDate + personSessionId+"]";
    }

    public Person(Integer personId, String personNameTitle, String personName,
            String personBirthday, String personEmail, String personAddress,
            String personNationality, String personGender, String personPhone,
            String personHomePhone, String personOfficePhone, String personJob,
            String personIdentityNumber, String personBankAccountNumber,
            Integer personApplyYear, String personPosition, String personNotes,
            String personPassport, String personExpirationDate, String personSessionId) {
        this.personId = personId;
        this.personNameTitle = personNameTitle;
        this.personName = personName;
        this.personBirthday = personBirthday;
        this.personEmail = personEmail;
        this.personAddress = personAddress;
        this.personNationality = personNationality;
        this.personGender = personGender;
        this.personPhone = personPhone;
        this.personHomePhone = personHomePhone;
        this.personOfficePhone = personOfficePhone;
        this.personJob = personJob;
        this.personIdentityNumber = personIdentityNumber;
        this.personBankAccountNumber = personBankAccountNumber;
        this.personApplyYear = personApplyYear;
        this.personPosition = personPosition;
        this.personNotes = personNotes;
        this.personPassport = personPassport;
        this.personExpirationDate = personExpirationDate;
        this.personSessionId = personSessionId;
    }

    public Person(String personNameTitle, String personName,
            String personBirthday, String personEmail, String personAddress,
            String personNationality, String personGender, String personPhone,
            String personHomePhone, String personOfficePhone, String personJob,
            String personIdentityNumber, String personBankAccountNumber,
            Integer personApplyYear, String personPosition, String personNotes,
            String personPassport, String personExpirationDate, String personSessionId) {
        this.personNameTitle = personNameTitle;
        this.personName = personName;
        this.personBirthday = personBirthday;
        this.personEmail = personEmail;
        this.personAddress = personAddress;
        this.personNationality = personNationality;
        this.personGender = personGender;
        this.personPhone = personPhone;
        this.personHomePhone = personHomePhone;
        this.personOfficePhone = personOfficePhone;
        this.personJob = personJob;
        this.personIdentityNumber = personIdentityNumber;
        this.personBankAccountNumber = personBankAccountNumber;
        this.personApplyYear = personApplyYear;
        this.personPosition = personPosition;
        this.personNotes = personNotes;
        this.personPassport = personPassport;
        this.personExpirationDate = personExpirationDate;
        this.personSessionId = personSessionId;
    }

    public Person() {
    }

}
