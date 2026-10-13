.class final Lcom/isaigu/gymapp/widget/XemsLicenseSection$OpenLicences;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenLicences"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$OpenLicences;->a:Landroid/app/Activity;

    .line 232
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 236
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 237
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$OpenLicences;->a:Landroid/app/Activity;

    const-string v0, "\u041b\u0438\u0446\u0435\u043d\u0437\u0438 \u0438 \u0430\u0432\u0442\u043e\u0440\u0438"

    const-string v2, "Licences & credits"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/report/licenses.html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, ""

    :goto_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsExercisePage;->openUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 238
    :cond_2c
    const-string v0, "#en"

    goto :goto_20
.end method
