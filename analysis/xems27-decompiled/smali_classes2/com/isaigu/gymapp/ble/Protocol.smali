.class public Lcom/isaigu/gymapp/ble/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field public static final mode_1:B = 0x1t

.field public static final mode_2:B = 0x2t

.field public static final mode_3:B = 0x3t

.field public static final mode_default:B = 0x0t

.field public static final operate_failed:B = 0x2t

.field public static final operate_success:B = 0x1t

.field public static final protocol_head0:B = 0x53t

.field public static final request_get_battery:B = 0x5t

.field public static final request_get_default_mode_other_parameter:B = 0xdt

.field public static final request_get_firmware_version:B = 0x7t

.field public static final request_get_hardware_version:B = 0x9t

.field public static final request_get_mode_10_part_parameter:B = 0xbt

.field public static final request_get_other_mode_other_parameter:B = 0xft

.field public static final request_set_mode_10_part_parameter:B = 0x1t

.field public static final request_set_mode_other_parameter:B = 0x3t

.field public static final request_set_start:B = -0xft

.field public static final request_set_stop:B = -0xet

.field public static final response_get_battery:B = 0x6t

.field public static final response_get_default_mode_other_parameter:B = 0xet

.field public static final response_get_firmware_version:B = 0x8t

.field public static final response_get_hardware_version:B = 0xat

.field public static final response_get_mode_10_part_parameter:B = 0xct

.field public static final response_get_other_mode_other_parameter:B = 0x10t

.field public static final response_set_mode_10_part_parameter:B = 0x2t

.field public static final response_set_mode_other_parameter:B = 0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
