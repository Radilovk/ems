.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForgetClick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final mac:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->a:Landroid/app/Activity;

    .line 348
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->root:Landroid/view/View;

    .line 349
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->mac:Ljava/lang/String;

    .line 350
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->name:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0414\u0430 \u0437\u0430\u0431\u0440\u0430\u0432\u044f \u043b\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430?"

    const-string v2, "Forget this band?"

    .line 356
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0431\u0440\u0430\u0432\u0438"

    const-string v2, "Forget"

    .line 358
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->root:Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;->mac:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v2, "Cancel"

    .line 359
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 361
    return-void
.end method
