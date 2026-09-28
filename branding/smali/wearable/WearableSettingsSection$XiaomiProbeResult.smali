.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiProbeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V
    .registers 2

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    .line 951
    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 946
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 955
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probeResult(Ljava/lang/String;)V

    .line 956
    return-void
.end method
