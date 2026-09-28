.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 387
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;->val$a:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTest(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000(Landroid/app/Activity;)V

    .line 391
    return-void
.end method
