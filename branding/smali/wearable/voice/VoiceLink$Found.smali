.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;
.super Ljava/lang/Object;
.source "VoiceLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Found"
.end annotation


# instance fields
.field final d:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;->d:Landroid/bluetooth/BluetoothDevice;

    .line 430
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onFound(Landroid/bluetooth/BluetoothDevice;)V

    .line 435
    return-void
.end method
