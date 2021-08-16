table 50101 "Lecturer"
{
    fields
    {
        field(1; LecturerID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Lecturer.LecturerID;
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(3; "Specialization"; Text[30])
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
}