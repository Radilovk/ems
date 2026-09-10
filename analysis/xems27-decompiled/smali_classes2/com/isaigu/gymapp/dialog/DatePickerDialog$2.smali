.class Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/DatePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    .line 63
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->access$000(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->access$000(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->access$100(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->access$100(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->access$100(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;->onDateSelected(III)V

    .line 68
    :cond_0
    return-void
.end method
