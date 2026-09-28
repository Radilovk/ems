.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiCaptured"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    .line 934
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;->text:Ljava/lang/String;

    .line 935
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiCaptured;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->captured(Ljava/lang/String;)V

    .line 940
    return-void
.end method
