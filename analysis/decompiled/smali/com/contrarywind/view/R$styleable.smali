.class public final Lcom/contrarywind/view/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/contrarywind/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final pickerview:[I

.field public static final pickerview_wheelview_dividerColor:I = 0x4

.field public static final pickerview_wheelview_gravity:I = 0x0

.field public static final pickerview_wheelview_lineSpacingMultiplier:I = 0x5

.field public static final pickerview_wheelview_textColorCenter:I = 0x3

.field public static final pickerview_wheelview_textColorOut:I = 0x2

.field public static final pickerview_wheelview_textSize:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/contrarywind/view/R$styleable;->pickerview:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0101d0
        0x7f0101d1
        0x7f0101d2
        0x7f0101d3
        0x7f0101d4
        0x7f0101d5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
