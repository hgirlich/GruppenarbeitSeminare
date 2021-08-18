table 50102 "Seminar"
{
    DataClassification = CustomerContent;
    LookupPageId = 50107;
    DrillDownPageId = 50107;
    fields
    {
        field(1; "SeminarID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Seminar Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "LecturerID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Lecturer.LecturerID;
        }
        field(4; "LecturerName"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Lecturer.Name where("LecturerID" = field("LecturerID")));
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
        field(20; "No. Series"; Code[20])
        {

        }
    }

    /*     keys
        {
            key(PK; "SeminarID")
            {
                Clustered = true;
            }
        } */

    var
        seminarSetup: Record "Seminar Setup";
        noSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "SeminarID" = '' then begin
            seminarSetup.get();
            seminarSetup.TestField("Seminar No. Series Code");
            //NoSeriesMgt.InitSeries(seminarSetup.SeminarID, '', Today, SeminarID, "No. Series");
            noSeriesMgt.InitSeries(seminarSetup."Seminar No. Series Code", '', Today, "SeminarID", "No. Series");
        end;
    end;
}