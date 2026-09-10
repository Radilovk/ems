.class public Lorg/apache/poi/ss/util/WorkbookUtil;
.super Ljava/lang/Object;
.source "WorkbookUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createSafeSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "nameProposal"    # Ljava/lang/String;

    .line 48
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/WorkbookUtil;->createSafeSheetName(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final createSafeSheetName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "nameProposal"    # Ljava/lang/String;
    .param p1, "replaceChar"    # C

    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v0, "null"

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 75
    const-string v0, "empty"

    return-object v0

    .line 77
    :cond_1
    const/16 v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "shortenname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 82
    .local v4, "ch":C
    if-eqz v4, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 95
    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_5

    .line 96
    :cond_3
    invoke-virtual {v2, v3, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 92
    :cond_4
    :pswitch_0
    invoke-virtual {v2, v3, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 93
    nop

    .line 80
    .end local v4    # "ch":C
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validateSheetName(Ljava/lang/String;)V
    .locals 6
    .param p0, "sheetName"    # Ljava/lang/String;

    .line 130
    if-eqz p0, :cond_4

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 134
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_3

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 141
    .local v2, "ch":C
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 152
    nop

    .line 139
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .restart local v2    # "ch":C
    :cond_0
    :pswitch_0
    nop

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid char ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ") found at index ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") in sheet name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    .line 161
    return-void

    .line 158
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sheet name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Sheet names must not begin or end with (\')."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sheetName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is invalid - character count MUST be greater than or equal to 1 and less than or equal to 31"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v0    # "len":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validateSheetState(I)V
    .locals 3
    .param p0, "state"    # I

    .line 174
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 177
    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ivalid sheet state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Sheet state must beone of the Workbook.SHEET_STATE_* constants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    goto :goto_0

    .line 175
    :cond_2
    nop

    .line 181
    :goto_0
    return-void
.end method
