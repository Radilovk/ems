.class public Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;
.super Ljava/lang/Object;
.source "DeviceConnectFailEvent.java"


# instance fields
.field private mac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;->mac:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;->mac:Ljava/lang/String;

    return-object v0
.end method
