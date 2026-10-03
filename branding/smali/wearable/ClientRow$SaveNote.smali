.class final Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;
.super Ljava/lang/Object;
.source "ClientRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SaveNote"
.end annotation


# instance fields
.field private final field:Landroid/widget/EditText;

.field private final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private final userId:J


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/EditText;J)V
    .registers 6

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 458
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->field:Landroid/widget/EditText;

    .line 459
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->userId:J

    .line 460
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientRow;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0411\u0435\u043b\u0435\u0436\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0430 \u2713"

    const-string v2, "Note saved \u2713"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    :try_start_4d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_54} :catch_55

    .line 472
    :goto_54
    return-void

    .line 470
    :catch_55
    move-exception v0

    goto :goto_54
.end method
