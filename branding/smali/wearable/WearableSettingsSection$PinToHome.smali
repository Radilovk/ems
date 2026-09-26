.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PinToHome;
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
    name = "PinToHome"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PinToHome;->activity:Landroid/app/Activity;

    .line 510
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PinToHome;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->pinToHome(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 515
    const-string v0, "\u0417\u0430\u0434\u0440\u044a\u0436 \u0438\u043a\u043e\u043d\u0430\u0442\u0430 \u043d\u0430 XEMS \u2192 \u201e\u041e\u0442\u0432\u043e\u0440\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u201c \u0438 \u044f \u043f\u043b\u044a\u0437\u043d\u0438 \u043d\u0430 \u043d\u0430\u0447\u0430\u043b\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d"

    const-string v1, "Long-press the XEMS icon \u2192 \"Open on the band\" and drag it to the home screen"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 519
    :cond_13
    return-void
.end method
