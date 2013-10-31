.class public Lcom/android/gallery3d/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Al:I = 0x615299

.field public static final Am:I = -0x5a

.field public static final An:I = 0x5a

.field public static final Ao:I = -0xb4

.field public static final Ap:I = 0xb4

.field private static final Aq:I = 0x8

.field private static final Ar:I = 0x14

.field private static final As:Ljava/lang/String; = "rev_geocoding"

.field private static final At:I = 0x3e8

.field private static final Au:I = 0x7d000

.field private static final Av:I = 0x0

.field private static Az:Landroid/location/Address; = null

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private Aw:Landroid/location/Geocoder;

.field private Ax:Lcom/android/gallery3d/common/BlobCache;

.field private Ay:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/b/v;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/gallery3d/b/v;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/v;->Aw:Landroid/location/Geocoder;

    .line 80
    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/b/ae;->a(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/b/v;->Ax:Lcom/android/gallery3d/common/BlobCache;

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/gallery3d/b/v;->Ay:Landroid/net/ConnectivityManager;

    .line 85
    return-void
.end method

.method private a(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 285
    const-string v0, ""

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    if-eqz p2, :cond_2

    .line 295
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    :cond_0
    return-object v0
.end method

.method public static final a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 276
    if-nez p1, :cond_1

    .line 277
    const-string p1, ""

    .line 280
    :cond_0
    :goto_0
    return-object p1

    .line 278
    :cond_1
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public a(DDZ)Landroid/location/Address;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x4056800000000000L

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 307
    add-double v0, p1, v4

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide v2, 0x4066800000000000L

    add-double/2addr v2, p3

    add-double/2addr v0, v2

    const-wide v2, 0x415854a640000000L

    mul-double/2addr v0, v2

    double-to-long v8, v0

    .line 310
    if-eqz p5, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/b/v;->Ax:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/b/v;->Ax:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v0, v8, v9}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v0

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/b/v;->Ay:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 315
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_5

    .line 316
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    :cond_1
    :goto_1
    return-object v6

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/b/v;->Aw:Landroid/location/Geocoder;

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 321
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 322
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {v0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    .line 331
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    :goto_2
    if-ge v7, v3, :cond_3

    .line 333
    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 335
    :cond_3
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 347
    iget-object v3, p0, Lcom/android/gallery3d/b/v;->Ax:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_4

    .line 348
    iget-object v3, p0, Lcom/android/gallery3d/b/v;->Ax:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v8, v9, v1}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 350
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :goto_3
    move-object v6, v0

    .line 394
    goto/16 :goto_1

    .line 354
    :cond_5
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 356
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 360
    if-eqz v1, :cond_a

    .line 361
    if-nez v3, :cond_6

    .line 362
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 369
    :goto_4
    if-eqz v1, :cond_8

    .line 370
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 371
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 372
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/b/v;->a(DDZ)Landroid/location/Address;

    move-result-object v6

    goto/16 :goto_1

    .line 363
    :cond_6
    if-nez v4, :cond_7

    .line 364
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_4

    .line 366
    :cond_7
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_4

    .line 375
    :cond_8
    new-instance v0, Landroid/location/Address;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 377
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v7

    .line 379
    :goto_5
    if-ge v1, v3, :cond_9

    .line 380
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 382
    :cond_9
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 383
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 384
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 385
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 387
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 388
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 389
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 390
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 391
    invoke-static {v2}, Lcom/android/gallery3d/b/v;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 395
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_a
    move-object v1, v6

    goto/16 :goto_4

    :cond_b
    move-object v0, v6

    goto/16 :goto_3

    :cond_c
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public a(Lcom/android/gallery3d/b/k;)Ljava/lang/String;
    .locals 30
    .parameter

    .prologue
    .line 89
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/b/k;->nh:D

    .line 90
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/b/k;->ni:D

    .line 91
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/b/k;->nj:D

    .line 92
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/b/k;->nk:D

    .line 93
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/gallery3d/b/k;->nj:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/b/k;->nh:D

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/b/k;->np:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/b/k;->nm:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v3, v13, v15

    if-gez v3, :cond_0

    .line 95
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/b/k;->nl:D

    .line 96
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/b/k;->nm:D

    .line 97
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/b/k;->nn:D

    .line 98
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/b/k;->np:D

    .line 100
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/b/v;->a(DDZ)Landroid/location/Address;

    move-result-object v27

    .line 101
    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/b/v;->a(DDZ)Landroid/location/Address;

    move-result-object v3

    .line 102
    if-nez v27, :cond_1

    move-object/from16 v27, v3

    .line 104
    :cond_1
    if-nez v3, :cond_26

    move-object/from16 v26, v27

    .line 106
    :goto_0
    if-eqz v27, :cond_2

    if-nez v26, :cond_4

    .line 107
    :cond_2
    const/4 v3, 0x0

    .line 272
    :cond_3
    :goto_1
    return-object v3

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/b/v;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 114
    const/4 v13, 0x0

    .line 115
    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v15

    .line 116
    const/4 v8, 0x0

    move/from16 v28, v8

    move-object v8, v13

    move/from16 v13, v28

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 117
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 118
    if-eqz v8, :cond_8

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v14

    .line 119
    :goto_3
    if-eqz v14, :cond_9

    move-object v8, v14

    .line 122
    :cond_5
    const-string v20, ""

    .line 123
    const-string v19, ""

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 125
    if-eqz v8, :cond_25

    .line 126
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/gallery3d/b/v;->a(DDZ)Landroid/location/Address;

    move-result-object v8

    .line 128
    if-nez v8, :cond_a

    .line 129
    sget-object v8, Lcom/android/gallery3d/b/v;->Az:Landroid/location/Address;

    .line 133
    :goto_4
    if-eqz v8, :cond_25

    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 134
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 135
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    :goto_5
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 142
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 143
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 144
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 145
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 146
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/v;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 148
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    .line 150
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 152
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_23

    .line 154
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 155
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_7
    :goto_6
    move-object/from16 v15, v18

    move-object/from16 v19, v17

    move-object/from16 v20, v17

    move-object/from16 v17, v16

    .line 173
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/b/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 174
    if-eqz v21, :cond_d

    const-string v22, "null"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 175
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 118
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 116
    :cond_9
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move-object v8, v14

    goto/16 :goto_2

    .line 131
    :cond_a
    sput-object v8, Lcom/android/gallery3d/b/v;->Az:Landroid/location/Address;

    goto/16 :goto_4

    .line 163
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_22

    .line 165
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 166
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_c
    :goto_8
    move-object/from16 v18, v19

    move-object/from16 v17, v14

    move-object/from16 v20, v15

    move-object/from16 v28, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v29

    .line 171
    goto/16 :goto_7

    .line 182
    :cond_d
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/gallery3d/b/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    if-eqz v13, :cond_e

    const-string v14, "null"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object v3, v13

    .line 184
    goto/16 :goto_1

    :cond_e
    move-object/from16 v22, v15

    move-object/from16 v23, v18

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    .line 189
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/b/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 190
    if-eqz v13, :cond_10

    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 193
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    .line 194
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 197
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 205
    :cond_10
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 206
    const-string v13, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v20, v19

    .line 209
    :cond_11
    const-string v13, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v19, v20

    .line 212
    :cond_12
    const-string v13, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 213
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 216
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 224
    :cond_14
    const/4 v8, 0x1

    new-array v0, v8, [F

    move-object/from16 v21, v0

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    .line 225
    invoke-static/range {v13 .. v21}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 227
    const/4 v4, 0x0

    aget v4, v21, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcom/android/gallery3d/b/y;->a(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 228
    const/16 v5, 0x14

    if-ge v4, v5, :cond_16

    .line 231
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/b/v;->a(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v4

    .line 232
    if-eqz v4, :cond_15

    move-object v3, v4

    .line 233
    goto/16 :goto_1

    .line 235
    :cond_15
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/b/v;->a(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v4

    .line 236
    if-eqz v4, :cond_16

    move-object v3, v4

    .line 237
    goto/16 :goto_1

    .line 242
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/b/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    if-eqz v4, :cond_17

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 245
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 246
    if-eqz v23, :cond_1f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 254
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/b/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    if-eqz v3, :cond_18

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    :cond_18
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    .line 261
    if-nez v4, :cond_19

    move-object/from16 v4, v23

    .line 263
    :cond_19
    if-nez v3, :cond_1a

    move-object/from16 v3, v22

    .line 265
    :cond_1a
    if-eqz v4, :cond_1b

    if-nez v3, :cond_1c

    .line 266
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 267
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_1e

    .line 268
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 270
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_1f
    move-object v3, v4

    goto/16 :goto_1

    :cond_20
    move-object v3, v13

    goto/16 :goto_1

    :cond_21
    move-object/from16 v3, v21

    goto/16 :goto_1

    :cond_22
    move-object/from16 v16, v17

    goto/16 :goto_8

    :cond_23
    move-object v14, v15

    goto/16 :goto_6

    :cond_24
    move-object/from16 v22, v19

    move-object/from16 v23, v18

    move-object/from16 v24, v14

    move-object/from16 v25, v16

    move-object/from16 v20, v17

    move-object/from16 v19, v15

    goto/16 :goto_9

    :cond_25
    move-object/from16 v8, v19

    move-object/from16 v13, v20

    goto/16 :goto_5

    :cond_26
    move-object/from16 v26, v3

    goto/16 :goto_0
.end method
