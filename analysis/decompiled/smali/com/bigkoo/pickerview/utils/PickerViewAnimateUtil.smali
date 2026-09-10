.class public Lcom/bigkoo/pickerview/utils/PickerViewAnimateUtil;
.super Ljava/lang/Object;
.source "PickerViewAnimateUtil.java"


# static fields
.field private static final INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationResource(IZ)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "isInAnimation"    # Z

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 24
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 22
    :pswitch_0
    if-eqz p1, :cond_0

    sget v0, Lcom/bigkoo/pickerview/R$anim;->pickerview_slide_in_bottom:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/bigkoo/pickerview/R$anim;->pickerview_slide_out_bottom:I

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method
