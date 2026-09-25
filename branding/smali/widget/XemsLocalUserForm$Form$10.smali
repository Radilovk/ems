.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$value:[I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 515
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$value:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$value:[I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 518
    return-void
.end method
