.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiLoginConfirm"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final email:Landroid/widget/EditText;

.field private final pass:Landroid/widget/EditText;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->a:Landroid/app/Activity;

    .line 925
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->root:Landroid/view/View;

    .line 926
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->email:Landroid/widget/EditText;

    .line 927
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->pass:Landroid/widget/EditText;

    .line 928
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->pass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    .line 935
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->a:Landroid/app/Activity;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435\u0439\u043b \u0438 \u043f\u0430\u0440\u043e\u043b\u0430."

    const-string v2, "Enter email and password."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 940
    :goto_31
    return-void

    .line 938
    :cond_32
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->a:Landroid/app/Activity;

    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 Xiaomi\u2026"

    const-string v4, "Contacting Xiaomi\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 939
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xems-xiaomi-login"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_31
.end method
