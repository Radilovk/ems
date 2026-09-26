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
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .registers 5

    .line 235
    if-nez p1, :cond_1f

    .line 236
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0435\u0443\u0441\u043f\u0435\u0448\u043d\u043e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_1f
    return-void
.end method
