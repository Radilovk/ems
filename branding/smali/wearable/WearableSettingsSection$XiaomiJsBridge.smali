.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiJsBridge;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiJsBridge"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V
    .registers 2

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiJsBridge;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    .line 920
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 924
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiJsBridge;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    invoke-direct {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    return-void
.end method
