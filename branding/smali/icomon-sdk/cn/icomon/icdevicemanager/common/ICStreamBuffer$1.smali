.class synthetic Lcn/icomon/icdevicemanager/common/ICStreamBuffer$1;
.super Ljava/lang/Object;
.source "ICStreamBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/common/ICStreamBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$common$ICStreamBuffer$ICStreamBufferSeek:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 238
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->values()[Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$1;->$SwitchMap$cn$icomon$icdevicemanager$common$ICStreamBuffer$ICStreamBufferSeek:[I

    :try_start_9
    sget-object v1, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$1;->$SwitchMap$cn$icomon$icdevicemanager$common$ICStreamBuffer$ICStreamBufferSeek:[I

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_CUR:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$1;->$SwitchMap$cn$icomon$icdevicemanager$common$ICStreamBuffer$ICStreamBufferSeek:[I

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_END:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
