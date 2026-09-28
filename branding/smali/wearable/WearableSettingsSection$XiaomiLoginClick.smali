.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;
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
    name = "XiaomiLoginClick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;->a:Landroid/app/Activity;

    .line 1031
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;->root:Landroid/view/View;

    .line 1032
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->showXiaomiLogin(Landroid/app/Activity;Landroid/view/View;)V

    .line 1037
    return-void
.end method
