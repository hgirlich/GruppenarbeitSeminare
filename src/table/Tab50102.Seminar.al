table 50102 "Seminar"
{
    fields
    {
        field(1; "SeminarID"; Integer)
        {
            Caption = 'Seminar ID';
            DataClassification = CustomerContent;
        }
        field(2; "Seminar Name"; Text[50])
        {

        }
        field(3; "LecturerID"; Code[20])
        {

        }
        field(4; "Description"; Text[100])
        {

        }
        field(5; "Date"; Date)
        {

        }
        field(6; "IsSubjectToExamination"; Boolean)
        {

        }
    }

    keys
    {
        key(PK; "SeminarID")
        {
            Clustered = true;
        }
    }
}