.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435\u0443\u0441\u043f\u0435\u0448\u043d\u043e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_0
    return-void
.end method
