.class public Lcom/clj/fastble/bluetooth/SplitWriter;
.super Ljava/lang/Object;
.source "SplitWriter.java"


# instance fields
.field private mBleBluetooth:Lcom/clj/fastble/bluetooth/BleBluetooth;

.field private mCallback:Lcom/clj/fastble/callback/BleWriteCallback;

.field private mCount:I

.field private mData:[B

.field private mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntervalBetweenTwoPackage:J

.field private mSendNextWhenLastSuccess:Z

.field private mTotalNum:I

.field private mUuid_service:Ljava/lang/String;

.field private mUuid_write:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "splitWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lcom/clj/fastble/bluetooth/SplitWriter$1;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clj/fastble/bluetooth/SplitWriter$1;-><init>(Lcom/clj/fastble/bluetooth/SplitWriter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/clj/fastble/bluetooth/SplitWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/SplitWriter;->write()V

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/bluetooth/SplitWriter;)I
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mTotalNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/clj/fastble/bluetooth/SplitWriter;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mDataQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/clj/fastble/bluetooth/SplitWriter;)Lcom/clj/fastble/callback/BleWriteCallback;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mCallback:Lcom/clj/fastble/callback/BleWriteCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/clj/fastble/bluetooth/SplitWriter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget-boolean v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mSendNextWhenLastSuccess:Z

    return v0
.end method

.method static synthetic access$500(Lcom/clj/fastble/bluetooth/SplitWriter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/clj/fastble/bluetooth/SplitWriter;)J
    .locals 2
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/SplitWriter;

    .line 18
    iget-wide v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mIntervalBetweenTwoPackage:J

    return-wide v0
.end method

.method private release()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 125
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private static splitByte([BI)Ljava/util/Queue;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation

    .line 129
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 130
    const-string v0, "Be careful: split count beyond 20! Ensure MTU higher than 23!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->w(Ljava/lang/String;)V

    .line 132
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 134
    .local v0, "byteQueue":Ljava/util/Queue;, "Ljava/util/Queue<[B>;"
    array-length v1, p0

    rem-int/2addr v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 135
    array-length v1, p0

    div-int/2addr v1, p1

    .local v1, "pkgCount":I
    goto :goto_0

    .line 137
    .end local v1    # "pkgCount":I
    :cond_1
    array-length v1, p0

    div-int/2addr v1, p1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 140
    .restart local v1    # "pkgCount":I
    :goto_0
    if-lez v1, :cond_5

    .line 141
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 144
    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    goto :goto_2

    .line 148
    :cond_2
    mul-int v5, v3, p1

    new-array v6, p1, [B

    move-object v7, v6

    .local v7, "dataPkg":[B
    invoke-static {p0, v5, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 145
    .end local v7    # "dataPkg":[B
    :cond_3
    :goto_2
    array-length v5, p0

    rem-int/2addr v5, p1

    if-nez v5, :cond_4

    move v5, p1

    goto :goto_3

    :cond_4
    array-length v5, p0

    rem-int/2addr v5, p1

    .line 146
    .local v5, "j":I
    :goto_3
    mul-int v6, v3, p1

    new-array v7, v5, [B

    move-object v8, v7

    .local v8, "dataPkg":[B
    invoke-static {p0, v6, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .end local v5    # "j":I
    .end local v8    # "dataPkg":[B
    .restart local v7    # "dataPkg":[B
    :goto_4
    invoke-interface {v0, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 141
    .end local v7    # "dataPkg":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v3    # "i":I
    :cond_5
    return-object v0
.end method

.method private splitWrite()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mData:[B

    if-eqz v0, :cond_1

    .line 72
    iget v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 75
    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/SplitWriter;->splitByte([BI)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mDataQueue:Ljava/util/Queue;

    .line 76
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mTotalNum:I

    .line 77
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/SplitWriter;->write()V

    .line 78
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "split count should higher than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/SplitWriter;->release()V

    .line 83
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 87
    .local v0, "data":[B
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mBleBluetooth:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mUuid_service:Ljava/lang/String;

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mUuid_write:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    new-instance v2, Lcom/clj/fastble/bluetooth/SplitWriter$2;

    invoke-direct {v2, p0}, Lcom/clj/fastble/bluetooth/SplitWriter$2;-><init>(Lcom/clj/fastble/bluetooth/SplitWriter;)V

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mUuid_write:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0, v2, v3}, Lcom/clj/fastble/bluetooth/BleConnector;->writeCharacteristic([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mSendNextWhenLastSuccess:Z

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mIntervalBetweenTwoPackage:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public splitWrite(Lcom/clj/fastble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 1
    .param p1, "bleBluetooth"    # Lcom/clj/fastble/bluetooth/BleBluetooth;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_write"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "sendNextWhenLastSuccess"    # Z
    .param p6, "intervalBetweenTwoPackage"    # J
    .param p8, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 56
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mBleBluetooth:Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 57
    iput-object p2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mUuid_service:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mUuid_write:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mData:[B

    .line 60
    iput-boolean p5, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mSendNextWhenLastSuccess:Z

    .line 61
    iput-wide p6, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mIntervalBetweenTwoPackage:J

    .line 62
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getSplitWriteNum()I

    move-result v0

    iput v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mCount:I

    .line 63
    iput-object p8, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->mCallback:Lcom/clj/fastble/callback/BleWriteCallback;

    .line 65
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/SplitWriter;->splitWrite()V

    .line 66
    return-void
.end method
