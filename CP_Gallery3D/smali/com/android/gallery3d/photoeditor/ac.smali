.class public Lcom/android/gallery3d/photoeditor/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RendererUtils"

.field private static final rN:[F = null

.field private static final rO:[F = null

.field private static final rP:Ljava/lang/String; = "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

.field private static final rQ:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

.field private static final rR:I = 0x4

.field private static final rS:F = 0.017453292f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 43
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/photoeditor/ac;->rN:[F

    .line 47
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/photoeditor/ac;->rO:[F

    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 327
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 328
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 329
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 330
    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 331
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    return v0
.end method

.method private static a([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter

    .prologue
    .line 341
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Number of vertices should be four."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    return-object v0
.end method

.method public static a(Lcom/android/gallery3d/photoeditor/s;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 254
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 255
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 258
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 259
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 262
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 265
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->b(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->c(Lcom/android/gallery3d/photoeditor/s;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 267
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->b(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 268
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->d(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->e(Lcom/android/gallery3d/photoeditor/s;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 270
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->d(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 271
    const-string v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 274
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 275
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 276
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 277
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 278
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/s;->f(Lcom/android/gallery3d/photoeditor/s;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 281
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 282
    return-void
.end method

.method public static a(Lcom/android/gallery3d/photoeditor/s;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/ac;->e(IIII)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 153
    return-void
.end method

.method public static a(Lcom/android/gallery3d/photoeditor/s;IIIIF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    neg-float v0, p5

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    .line 158
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 159
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 160
    int-to-float v2, p1

    mul-float/2addr v2, v1

    .line 161
    int-to-float v3, p1

    mul-float/2addr v3, v0

    .line 162
    int-to-float v4, p2

    mul-float/2addr v1, v4

    .line 163
    int-to-float v4, p2

    mul-float/2addr v0, v4

    .line 165
    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 166
    const/4 v5, 0x0

    neg-float v6, v2

    add-float/2addr v6, v0

    aput v6, v4, v5

    .line 167
    const/4 v5, 0x1

    neg-float v6, v3

    sub-float/2addr v6, v1

    aput v6, v4, v5

    .line 168
    const/4 v5, 0x2

    add-float/2addr v0, v2

    aput v0, v4, v5

    .line 169
    const/4 v0, 0x3

    sub-float v1, v3, v1

    aput v1, v4, v0

    .line 170
    const/4 v0, 0x4

    const/4 v1, 0x2

    aget v1, v4, v1

    neg-float v1, v1

    aput v1, v4, v0

    .line 171
    const/4 v0, 0x5

    const/4 v1, 0x3

    aget v1, v4, v1

    neg-float v1, v1

    aput v1, v4, v0

    .line 172
    const/4 v0, 0x6

    const/4 v1, 0x0

    aget v1, v4, v1

    neg-float v1, v1

    aput v1, v4, v0

    .line 173
    const/4 v0, 0x7

    const/4 v1, 0x1

    aget v1, v4, v1

    neg-float v1, v1

    aput v1, v4, v0

    .line 175
    const/4 v0, 0x0

    aget v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x2

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 176
    const/4 v1, 0x1

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x3

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 177
    int-to-float v2, p3

    div-float v0, v2, v0

    int-to-float v2, p4

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 179
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 180
    aget v2, v4, v0

    int-to-float v3, p3

    div-float v3, v1, v3

    mul-float/2addr v2, v3

    aput v2, v4, v0

    .line 181
    add-int/lit8 v2, v0, 0x1

    aget v3, v4, v2

    int-to-float v5, p4

    div-float v5, v1, v5

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 179
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/ac;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 184
    return-void
.end method

.method public static a(Lcom/android/gallery3d/photoeditor/s;IIIIFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/ac;->e(IIII)[F

    move-result-object v0

    .line 190
    float-to-int v1, p5

    div-int/lit16 v1, v1, 0xb4

    .line 191
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    aput v3, v0, v2

    .line 193
    const/4 v2, 0x4

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v0, v2

    .line 194
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    neg-float v3, v3

    aput v3, v0, v2

    .line 195
    const/4 v2, 0x6

    const/4 v3, 0x2

    aget v3, v0, v3

    aput v3, v0, v2

    .line 197
    :cond_0
    float-to-int v2, p6

    div-int/lit16 v2, v2, 0xb4

    .line 198
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 199
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    aput v4, v0, v3

    .line 200
    const/4 v3, 0x3

    const/4 v4, 0x1

    aget v4, v0, v4

    aput v4, v0, v3

    .line 201
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    neg-float v4, v4

    aput v4, v0, v3

    .line 202
    const/4 v3, 0x7

    const/4 v4, 0x5

    aget v4, v0, v4

    aput v4, v0, v3

    .line 205
    :cond_1
    const/high16 v3, 0x40a0

    .line 206
    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 207
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    const/high16 v5, 0x4334

    rem-float v5, p5, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 209
    mul-int/lit16 v1, v1, 0xb4

    int-to-float v1, v1

    sub-float v1, p5, v1

    const v5, 0x3c8efa35

    mul-float/2addr v1, v5

    .line 210
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 211
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 213
    const/4 v6, 0x0

    aget v6, v0, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    div-float v6, v3, v6

    .line 214
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v0, v8

    mul-float/2addr v8, v5

    mul-float/2addr v8, v6

    aput v8, v4, v7

    .line 215
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v0, v8

    mul-float/2addr v8, v6

    aput v8, v4, v7

    .line 216
    const/4 v7, 0x4

    const/4 v8, 0x0

    aget v8, v4, v8

    aput v8, v4, v7

    .line 217
    const/4 v7, 0x5

    const/4 v8, 0x5

    aget v8, v0, v8

    mul-float/2addr v6, v8

    aput v6, v4, v7

    .line 219
    const/4 v6, 0x2

    aget v6, v0, v6

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    div-float v1, v3, v1

    .line 220
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v0, v7

    mul-float/2addr v5, v7

    mul-float/2addr v5, v1

    aput v5, v4, v6

    .line 221
    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v0, v6

    mul-float/2addr v6, v1

    aput v6, v4, v5

    .line 222
    const/4 v5, 0x6

    const/4 v6, 0x2

    aget v6, v4, v6

    aput v6, v4, v5

    .line 223
    const/4 v5, 0x7

    const/4 v6, 0x7

    aget v6, v0, v6

    mul-float/2addr v1, v6

    aput v1, v4, v5

    .line 226
    :cond_2
    const/high16 v1, 0x4334

    rem-float v1, p6, v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    .line 227
    mul-int/lit16 v1, v2, 0xb4

    int-to-float v1, v1

    sub-float v1, p6, v1

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    .line 228
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 229
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 231
    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    div-float v5, v3, v5

    .line 232
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v7, v5

    aput v7, v4, v6

    .line 233
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v0, v7

    mul-float/2addr v7, v2

    mul-float/2addr v7, v5

    aput v7, v4, v6

    .line 234
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v0, v7

    mul-float/2addr v5, v7

    aput v5, v4, v6

    .line 235
    const/4 v5, 0x3

    const/4 v6, 0x1

    aget v6, v4, v6

    aput v6, v4, v5

    .line 237
    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    div-float v1, v3, v1

    .line 238
    const/4 v3, 0x4

    const/4 v5, 0x4

    aget v5, v0, v5

    mul-float/2addr v5, v1

    aput v5, v4, v3

    .line 239
    const/4 v3, 0x5

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v2, v5

    mul-float/2addr v2, v1

    aput v2, v4, v3

    .line 240
    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v0, v0, v3

    mul-float/2addr v0, v1

    aput v0, v4, v2

    .line 241
    const/4 v0, 0x7

    const/4 v1, 0x5

    aget v1, v4, v1

    aput v1, v4, v0

    .line 243
    :cond_3
    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/ac;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 244
    return-void
.end method

.method public static ap(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 121
    aput p0, v0, v2

    .line 122
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 123
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static dF()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 73
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 75
    aget v0, v0, v2

    return v0
.end method

.method public static dG()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    const/high16 v0, 0x3f80

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 248
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 249
    return-void
.end method

.method public static dH()Lcom/android/gallery3d/photoeditor/s;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    const v1, 0x8b31

    const-string v2, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/ac;->a(ILjava/lang/String;)I

    move-result v1

    .line 286
    if-nez v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const v2, 0x8b30

    const-string v3, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/ac;->a(ILjava/lang/String;)I

    move-result v2

    .line 290
    if-eqz v2, :cond_0

    .line 294
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 295
    if-eqz v3, :cond_2

    .line 296
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 297
    const-string v0, "glAttachShader"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 298
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 299
    const-string v0, "glAttachShader"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 300
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 301
    new-array v0, v5, [I

    .line 302
    const v1, 0x8b82

    invoke-static {v3, v1, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 303
    aget v0, v0, v4

    if-eq v0, v5, :cond_2

    .line 304
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_2
    new-instance v0, Lcom/android/gallery3d/photoeditor/s;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/s;-><init>()V

    .line 313
    const-string v1, "tex_sampler"

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;I)I

    .line 314
    const-string v1, "a_texcoord"

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/s;->b(Lcom/android/gallery3d/photoeditor/s;I)I

    .line 315
    const-string v1, "a_position"

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/s;->c(Lcom/android/gallery3d/photoeditor/s;I)I

    .line 316
    sget-object v1, Lcom/android/gallery3d/photoeditor/ac;->rN:[F

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/s;->b(Lcom/android/gallery3d/photoeditor/s;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 317
    sget-object v1, Lcom/android/gallery3d/photoeditor/ac;->rO:[F

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/s;->a(Lcom/android/gallery3d/photoeditor/s;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 319
    invoke-static {v0, v3}, Lcom/android/gallery3d/photoeditor/s;->d(Lcom/android/gallery3d/photoeditor/s;I)I

    goto/16 :goto_0
.end method

.method public static e(III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x8d40

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 97
    new-array v7, v8, [I

    .line 98
    invoke-static {v8, v7, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 99
    const-string v1, "glGenFramebuffers"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 100
    aget v1, v7, v0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 101
    const-string v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 102
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v9, v1, v2, p0, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 104
    const-string v1, "glFramebufferTexture2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 106
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 107
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 108
    const-string v1, "glReadPixels"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 109
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 112
    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 113
    const-string v2, "glBindFramebuffer"

    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 114
    invoke-static {v8, v7, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 115
    const-string v0, "glDeleteFramebuffer"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 116
    return-object v1
.end method

.method private static e(IIII)[F
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 128
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 129
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 130
    div-float v0, v1, v0

    .line 132
    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 133
    sget-object v2, Lcom/android/gallery3d/photoeditor/ac;->rO:[F

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 136
    aget v2, v1, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    .line 137
    const/4 v2, 0x2

    aget v3, v1, v2

    div-float/2addr v3, v0

    aput v3, v1, v2

    .line 138
    const/4 v2, 0x4

    aget v3, v1, v2

    div-float/2addr v3, v0

    aput v3, v1, v2

    .line 139
    const/4 v2, 0x6

    aget v3, v1, v2

    div-float v0, v3, v0

    aput v0, v1, v2

    .line 146
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const/4 v2, 0x1

    aget v3, v1, v2

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 142
    const/4 v2, 0x3

    aget v3, v1, v2

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 143
    const/4 v2, 0x5

    aget v3, v1, v2

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 144
    const/4 v2, 0x7

    aget v3, v1, v2

    mul-float/2addr v0, v3

    aput v0, v1, v2

    goto :goto_0
.end method

.method public static i(Landroid/graphics/Bitmap;)I
    .locals 5
    .parameter

    .prologue
    const v4, 0x812f

    const/16 v3, 0x2601

    const/4 v1, 0x0

    const/16 v2, 0xde1

    .line 79
    invoke-static {}, Lcom/android/gallery3d/photoeditor/ac;->dF()I

    move-result v0

    .line 81
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 82
    invoke-static {v2, v1, p0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 83
    const/16 v1, 0x2800

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
    const/16 v1, 0x2801

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    const/16 v1, 0x2802

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 89
    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 91
    const-string v1, "texImage2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ac;->s(Ljava/lang/String;)V

    .line 93
    return v0
.end method

.method private static s(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 353
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v1, "RendererUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RuntimeException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method
