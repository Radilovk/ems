.class Ljavax/mail/internet/ParameterList$ToStringBuffer;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToStringBuffer"
.end annotation


# instance fields
.field private sb:Ljava/lang/StringBuffer;

.field private used:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "used"    # I

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    .line 705
    iput p1, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    .line 706
    return-void
.end method


# virtual methods
.method public addNV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x4c

    .line 709
    iget-object v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 712
    .local v1, "len":I
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    add-int/2addr v3, v1

    if-le v3, v5, :cond_0

    .line 713
    iget-object v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    const-string v4, "\r\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    const/16 v3, 0x8

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    .line 716
    :cond_0
    iget-object v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 717
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    .line 718
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v5, :cond_2

    .line 720
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-static {v3, p2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 723
    .local v0, "lastlf":I
    if-ltz v0, :cond_1

    .line 724
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    .line 731
    .end local v0    # "lastlf":I
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 726
    .restart local v0    # "lastlf":I
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    goto :goto_0

    .line 728
    .end local v0    # "lastlf":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    iget v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
