table 50101 "Lecturer"
{
    fields
    {
        field(1; LecturerID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; Vorname; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(4; Address1; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Address2; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Stadt; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; PLZ; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "No. Series"; Code[20])
        {

        }
    }

    keys
    {
        key(PK; LecturerID)
        {
            Clustered = true;
        }
    }

    var
        seminarSetup: Record "Seminar Setup";
        noSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "LecturerID" = '' then begin
            seminarSetup.get();
            seminarSetup.TestField("Lecturer No. Series Code");
            //NoSeriesMgt.InitSeries(seminarSetup.SeminarID, '', Today, SeminarID, "No. Series");
            noSeriesMgt.InitSeries(seminarSetup."Student No. Series Code", '', Today, LecturerID, "No. Series");
        end;
    end;

}