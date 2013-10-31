.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "sb"

    .prologue
    const/16 v4, 0x20

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 191
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 194
    .local v0, c:C
    if-nez v0, :cond_2

    .line 195
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 203
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0           #c:C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 212
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 210
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, out:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v6, name:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, address:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, comment:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 52
    .local v4, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 54
    .local v3, cursor:I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_13

    .line 55
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 57
    .local v1, c:C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_1

    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 58
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 67
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 71
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 79
    :cond_5
    const/16 v7, 0x22

    if-ne v1, v7, :cond_9

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 82
    :goto_3
    if-ge v4, v3, :cond_0

    .line 83
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 85
    const/16 v7, 0x22

    if-ne v1, v7, :cond_6

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_8

    .line 89
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_7

    .line 90
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 93
    :cond_8
    const/16 v7, 0x3c

    if-eq v1, v7, :cond_0

    .line 97
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    :cond_9
    const/16 v7, 0x28

    if-ne v1, v7, :cond_f

    .line 102
    const/4 v5, 0x1

    .line 103
    .local v5, level:I
    add-int/lit8 v4, v4, 0x1

    .line 105
    :goto_4
    if-ge v4, v3, :cond_0

    if-lez v5, :cond_0

    .line 106
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 108
    const/16 v7, 0x29

    if-ne v1, v7, :cond_b

    .line 109
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 115
    :cond_b
    const/16 v7, 0x28

    if-ne v1, v7, :cond_c

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 119
    :cond_c
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_e

    .line 120
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_d

    .line 121
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_d
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 124
    :cond_e
    const/16 v7, 0x3c

    if-eq v1, v7, :cond_0

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 132
    .end local v5           #level:I
    :cond_f
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_11

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    :goto_5
    if-ge v4, v3, :cond_0

    .line 136
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 138
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_10

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    goto/16 :goto_0

    .line 141
    :cond_10
    const/16 v7, 0x3c

    if-eq v1, v7, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 149
    :cond_11
    const/16 v7, 0x20

    if-ne v1, v7, :cond_12

    .line 150
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 153
    :cond_12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 158
    .end local v1           #c:C
    :cond_13
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 161
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_14
    :goto_6
    return-void

    .line 164
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 165
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .parameter "text"

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 253
    .local v2, len:I
    move v1, p2

    .line 255
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 256
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 258
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 312
    .end local v0           #c:C
    :cond_1
    return v1

    .line 260
    .restart local v0       #c:C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 261
    add-int/lit8 v1, v1, 0x1

    .line 263
    :goto_1
    if-ge v1, v2, :cond_0

    .line 264
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 266
    if-ne v0, v5, :cond_3

    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    goto :goto_0

    .line 269
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 270
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 272
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_5
    if-ne v0, v6, :cond_9

    .line 276
    const/4 v3, 0x1

    .line 277
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 279
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 280
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 282
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 283
    add-int/lit8 v3, v3, -0x1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    :cond_6
    if-ne v0, v6, :cond_7

    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 289
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 291
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .end local v3           #level:I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 295
    add-int/lit8 v1, v1, 0x1

    .line 297
    :goto_3
    if-ge v1, v2, :cond_0

    .line 298
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 300
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    goto :goto_0

    .line 304
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 308
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, best:I
    const/4 v1, 0x0

    .line 229
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 230
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 232
    if-ge v1, p2, :cond_0

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 235
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_1
    if-ge v1, p2, :cond_0

    .line 240
    move v0, v1

    goto :goto_0

    .line 245
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
