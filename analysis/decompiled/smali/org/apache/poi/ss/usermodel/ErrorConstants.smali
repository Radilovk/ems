.class public Lorg/apache/poi/ss/usermodel/ErrorConstants;
.super Ljava/lang/Object;
.source "ErrorConstants.java"


# static fields
.field public static final ERROR_DIV_0:I = 0x7

.field public static final ERROR_NA:I = 0x2a

.field public static final ERROR_NAME:I = 0x1d

.field public static final ERROR_NULL:I = 0x0

.field public static final ERROR_NUM:I = 0x24

.field public static final ERROR_REF:I = 0x17

.field public static final ERROR_VALUE:I = 0xf


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static final getText(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad error code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :sswitch_0
    const-string v0, "#NULL!"

    .line 59
    :goto_0
    return-object v0

    .line 54
    :sswitch_1
    const-string v0, "#DIV/0!"

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "#VALUE!"

    goto :goto_0

    .line 56
    :sswitch_3
    const-string v0, "#REF!"

    goto :goto_0

    .line 57
    :sswitch_4
    const-string v0, "#NAME?"

    goto :goto_0

    .line 58
    :sswitch_5
    const-string v0, "#NUM!"

    goto :goto_0

    .line 59
    :sswitch_6
    const-string v0, "#N/A"

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
        0x17 -> :sswitch_3
        0x1d -> :sswitch_4
        0x24 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public static final isValidCode(I)Z
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 70
    sparse-switch p0, :sswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method
