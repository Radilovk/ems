.class final Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentDone;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsentDone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentDone;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSigned(Landroid/graphics/Bitmap;J)V
    .registers 6

    .prologue
    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentDone;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->consentSig:Landroid/graphics/Bitmap;

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentDone;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-wide p2, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->consentAt:J

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentDone;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderConsent()V

    .line 352
    return-void
.end method
