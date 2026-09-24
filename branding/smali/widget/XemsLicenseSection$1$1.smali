.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$root:Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$result:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->onActivated(Landroid/app/Activity;Landroid/view/View;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 103
    return-void
.end method
