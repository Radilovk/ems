.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 256
    return-void
.end method
