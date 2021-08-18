page 50101 "LecturerList"
{
    Caption = 'Lecturer List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Lecturer;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(LecturerID; Rec.LecturerID)
                {
                    Editable = false;
                }
                field(Name; Rec.Name)
                {

                }
                field(Vorname; Rec.Vorname)
                {

                }
                field(Adresse1; Rec.Address1)
                {

                }
                field(Adresse2; Rec.Address2)
                {

                }
                field(Stadt; Rec.Stadt)
                {

                }
                field(PLZ; Rec.PLZ)
                {

                }
            }
        }
    }
}