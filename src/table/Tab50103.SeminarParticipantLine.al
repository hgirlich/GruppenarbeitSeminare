table 50103 "SeminarParticipantLine"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "SeminarID"; Code[10])
        {
            Caption = 'Seminar ID';
            DataClassification = CustomerContent;
            TableRelation = Seminar.SeminarID;
        }
        field(2; "SeminarName"; Text[50])
        {
            Caption = 'Seminar Name';
            DataClassification = CustomerContent;
            TableRelation = Seminar."Seminar Name";
        }
        field(3; "StudentID"; Code[10])
        {
            Caption = 'Student ID';
            DataClassification = CustomerContent;
            TableRelation = Student.StudentID;
        }

        field(4; StudentName; Text[100])
        {
            Caption = 'Student Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Student.Name where("StudentID" = field("StudentID"))); //and where(("SeminarID") = field("SeminarID")));
            Editable = false;
        }
        field(5; Date; Date)
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
        }
        field(6; Grade; Code[10])
        {

        }
    }

    keys
    {
        key(PK; "SeminarID", "StudentID")
        {
            Clustered = true;
        }
    }

}