page 50104 "SeminarList"
{
    Caption = 'Seminar List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Seminar";
    //CardPageId = 50102;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("SeminarID"; Rec."SeminarID")
                {
                    Editable = false;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {

                }

                field(LecturerID; Rec.LecturerID)
                {

                }
                field(LecturerName; Rec.LecturerName)
                {

                }
                field(IsSubjectToExamination; Rec.IsSubjectToExamination)
                {

                }
                field(Date; Rec.Date)
                {

                }
            }
        }
        area(FactBoxes)
        {
            part("Seminar FactBox"; "SeminarFactBox")
            {
                Caption = 'Seminar Information FactBox';
                SubPageLink = "SeminarID" = field("SeminarID");
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(ShowSeminarDetails)
            {
                Caption = 'Show Seminar Details';
                ApplicationArea = All;
                RunObject = page 50102;
                RunPageLink = "SeminarID" = field(SeminarID);
            }

            action(AddSeminar)
            {
                Caption = 'Add new Seminar';
                ApplicationArea = All;
                RunObject = page 50102;
                RunPageLink = "SeminarID" = field(SeminarID);
            }
        }
    }
}