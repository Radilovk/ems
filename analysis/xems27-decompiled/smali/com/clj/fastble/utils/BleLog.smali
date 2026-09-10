.class public final Lcom/clj/fastble/utils/BleLog;
.super Ljava/lang/Object;
.source "BleLog.java"


# static fields
.field private static final defaultTag:Ljava/lang/String; = "FastBle"

.field public static isPrint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 12
    sget-boolean v0, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 13
    const-string v0, "FastBle"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 28
    const-string v0, "FastBle"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 18
    const-string v0, "FastBle"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 23
    const-string v0, "FastBle"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method
