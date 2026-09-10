.class Lcom/isaigu/gymapp/widget/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/isaigu/gymapp/widget/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currSelectedMax:F

.field public currSelectedMin:F

.field public maxValue:F

.field public minValue:F

.field public rangeInterval:F

.field public tickNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/widget/SavedState$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/SavedState$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMax:F

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/isaigu/gymapp/widget/SavedState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/isaigu/gymapp/widget/SavedState$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMax:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    return-void
.end method
