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

    .line 116
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$eye:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 119
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isKeyHidden()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$100()Z

    move-result p1

    .line 120
    xor-int/lit8 v0, p1, 0x1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$200(Z)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$eye:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    const-string p1, "\u0421\u043a\u0440\u0438\u0439"

    const-string v1, "Hide"

    goto :goto_16

    :cond_12
    const-string p1, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v1, "Show"

    :goto_16
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
