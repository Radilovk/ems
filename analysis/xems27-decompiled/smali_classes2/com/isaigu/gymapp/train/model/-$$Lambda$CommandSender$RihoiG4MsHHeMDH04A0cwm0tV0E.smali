.class public final synthetic Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/model/CommandSender;

.field public final synthetic f$1:Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;->f$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;->f$1:Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;->f$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;->f$1:Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;->lambda$postWrite$0$CommandSender(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V

    return-void
.end method
