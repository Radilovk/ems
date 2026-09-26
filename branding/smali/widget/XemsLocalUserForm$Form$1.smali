.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 153
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 154
    return-void
.end method
