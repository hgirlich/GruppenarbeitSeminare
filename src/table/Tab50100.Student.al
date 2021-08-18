table 50100 "Student"
{
    DataClassification = CustomerContent;
    //LookupPageId = 50108;
    //DrillDownPageId = 50108;
    fields
    {
        field(1; StudentID; Code[20])
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
        field(6; City; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; PLZ; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; StudentID)
        {
            Clustered = true;
        }
    }


    var
        seminarSetup: Record "Seminar Setup";
        noSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "StudentID" = '' then begin
            seminarSetup.get();
            seminarSetup.TestField("Student No. Series Code");
            //NoSeriesMgt.InitSeries(seminarSetup.SeminarID, '', Today, SeminarID, "No. Series");
            noSeriesMgt.InitSeries(seminarSetup."Student No. Series Code", '', Today, StudentID, "No. Series");
        end;
    end;
}