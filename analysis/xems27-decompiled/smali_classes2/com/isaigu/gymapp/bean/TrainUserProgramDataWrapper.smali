.class public Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
.super Ljava/lang/Object;
.source "TrainUserProgramDataWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public batteryValue:I

.field public connected:Z

.field public deviceName:Ljava/lang/String;

.field public inStart:Z

.field public macAddress:Ljava/lang/String;

.field public secondValue:I

.field public start:Z

.field public trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

.field public trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    return-void
.end method
