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
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;->d:Landroid/bluetooth/BluetoothDevice;

    .line 428
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onFound(Landroid/bluetooth/BluetoothDevice;)V

    .line 433
    return-void
.end method
