.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->addConnectionPart(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;ZII)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$appStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$appStatus:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->start(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 364
    return-void
.end method
