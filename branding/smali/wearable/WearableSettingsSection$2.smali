.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$eye:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$eye:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 118
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isKeyHidden()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$100()Z

    move-result v1

    .line 119
    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :goto_7
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$200(Z)V

    .line 120
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$eye:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    const-string v0, "\u0421\u043a\u0440\u0438\u0439"

    const-string v1, "Hide"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void

    .line 119
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7

    .line 120
    :cond_1c
    const-string v0, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v1, "Show"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
