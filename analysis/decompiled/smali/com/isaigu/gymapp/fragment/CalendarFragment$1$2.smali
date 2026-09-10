.class Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->onAddClick(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$year:I

    iput p3, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$month:I

    iput p4, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;)V
    .locals 8
    .param p1, "pickerViewData"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p2, "pickerViewData2"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p3, "pickerViewData3"    # Lcom/isaigu/gymapp/bean/PickerViewData;

    .prologue
    .line 112
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    new-instance v7, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v7}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 114
    .local v7, "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    new-instance v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;)V

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 123
    .end local v7    # "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    iget v4, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$year:I

    iget v5, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$month:I

    iget v6, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$day:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$500(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/lang/String;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;III)V

    goto :goto_0
.end method
