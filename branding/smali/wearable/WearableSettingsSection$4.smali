.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$appStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 3

    .line 184
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;->val$appStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 187
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;->val$appStatus:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->start(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 188
    return-void
.end method
