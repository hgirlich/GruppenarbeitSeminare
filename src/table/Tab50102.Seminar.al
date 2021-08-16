table 50102 "Seminar"
{
    LookupPageId = 50102;
    DrillDownPageId = 50102;

    fields
    {
        field(1; "SeminarID"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Seminar Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(3; "LecturerID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(4; "LecturerName"; Code[50])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(6; "Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(7; "IsSubjectToExamination"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "SeminarID")
        {
            Clustered = true;
        }
    }

    var
        seminarSetup: Record "Seminar";

    /*     trigger OnInsert()
        begin
            if "SeminarID" = '' then begin
                seminarSetup.get();
                seminarSetup.TestField("SeminarID");
                //NoSeriesMgt.InitSeries(seminarSetup."Meal Order No. Series Code", '', Today, "No.", "No. Series");
            end;
        end; 
    */
}