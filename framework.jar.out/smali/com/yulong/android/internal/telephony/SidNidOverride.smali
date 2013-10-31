.class public Lcom/yulong/android/internal/telephony/SidNidOverride;
.super Ljava/lang/Object;
.source "SidNidOverride.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PARTNER_OPTION_OVERRIDE_PATH:Ljava/lang/String; = "etc/sidnid-conf"

.field private static carrierMccMncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static carrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/yulong/android/internal/telephony/SidNidOverride$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/SidNidOverride$1;-><init>(Lcom/yulong/android/internal/telephony/SidNidOverride;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SidNidOverride$1;->start()V

    .line 69
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/yulong/android/internal/telephony/SidNidOverride;->loadSpnOverrides()V

    return-void
.end method

.method public static getInstance()Lcom/yulong/android/internal/telephony/SidNidOverride;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/yulong/android/internal/telephony/SidNidOverride;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/yulong/android/internal/telephony/SidNidOverride;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SidNidOverride;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static loadSpnOverrides()V
    .locals 17

    .prologue
    .line 86
    const/4 v11, 0x0

    .line 87
    .local v11, spnReader:Ljava/io/FileReader;
    const-string v13, "GSM"

    const-string/jumbo v14, "suzhiwei test loadSpnOverrides begin.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v8, "etc/sidnid-conf-0.xml"

    .line 89
    .local v8, path:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-direct {v10, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v10, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 95
    .end local v11           #spnReader:Ljava/io/FileReader;
    .local v12, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 96
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    const-string/jumbo v13, "spnOverrides"

    invoke-static {v7, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, name:Ljava/lang/String;
    const-string/jumbo v13, "spnOverride"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v13

    if-nez v13, :cond_2

    .line 136
    if-eqz v12, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v11, v12

    .line 143
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #spnReader:Ljava/io/FileReader;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 108
    .end local v11           #spnReader:Ljava/io/FileReader;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #spnReader:Ljava/io/FileReader;
    :cond_2
    const/4 v13, 0x0

    :try_start_3
    const-string/jumbo v14, "sid"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, sid:Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "mcc"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, mcc:Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "mnc"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, mnc:Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "option"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, option:Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "ltm"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, ltm:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, mccmnc:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 117
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 118
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "suzhiwei test sidlte="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    sget-object v13, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v13, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 126
    .end local v1           #ltm:Ljava/lang/String;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #option:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #sid:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v11, v12

    .line 127
    .end local v12           #spnReader:Ljava/io/FileReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    :goto_2
    :try_start_4
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t open "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "etc/sidnid-conf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    if-eqz v11, :cond_1

    .line 137
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException in spnReader.close() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    .end local v11           #spnReader:Ljava/io/FileReader;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #spnReader:Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 140
    .restart local v0       #e:Ljava/io/IOException;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException in spnReader.close() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 142
    .end local v12           #spnReader:Ljava/io/FileReader;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v0

    .line 130
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_6
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in option-conf parser "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    if-eqz v11, :cond_1

    .line 137
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 139
    :catch_4
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException in spnReader.close() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 132
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in option-conf parser "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    if-eqz v11, :cond_1

    .line 137
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_1

    .line 139
    :catch_6
    move-exception v0

    .line 140
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException in spnReader.close() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 136
    :goto_5
    if-eqz v11, :cond_4

    .line 137
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 141
    :cond_4
    :goto_6
    throw v13

    .line 139
    :catch_7
    move-exception v0

    .line 140
    .restart local v0       #e:Ljava/io/IOException;
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException in spnReader.close() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    .end local v11           #spnReader:Ljava/io/FileReader;
    .restart local v12       #spnReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #spnReader:Ljava/io/FileReader;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    goto :goto_5

    .line 131
    .end local v11           #spnReader:Ljava/io/FileReader;
    .restart local v12       #spnReader:Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v11, v12

    .end local v12           #spnReader:Ljava/io/FileReader;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    goto :goto_4

    .line 129
    .end local v11           #spnReader:Ljava/io/FileReader;
    .restart local v12       #spnReader:Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v11, v12

    .end local v12           #spnReader:Ljava/io/FileReader;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    goto/16 :goto_3

    .line 126
    :catch_a
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 72
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsCarrierMccMnc(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 75
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMccMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "carrier"

    .prologue
    .line 82
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "carrier"

    .prologue
    .line 78
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
