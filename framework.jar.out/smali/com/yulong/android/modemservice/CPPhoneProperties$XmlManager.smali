.class public Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;
.super Ljava/lang/Object;
.source "CPPhoneProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/CPPhoneProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlManager"
.end annotation


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field doc:Lorg/w3c/dom/Document;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private xmlFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "xmlFile"

    .prologue
    .line 937
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    .line 892
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 939
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->init1(Ljava/lang/String;)V

    .line 940
    iput-object p1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->xmlFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception init1 parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public doc2xml(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 7
    .parameter "doc"
    .parameter "filename"

    .prologue
    .line 949
    const/4 v1, 0x1

    .line 951
    .local v1, flag:Z
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 952
    .local v2, iFactory:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 953
    .local v5, transformer:Ljavax/xml/transform/Transformer;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 954
    .local v4, source:Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 955
    .local v3, result:Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v2           #iFactory:Ljavax/xml/transform/TransformerFactory;
    .end local v3           #result:Ljavax/xml/transform/stream/StreamResult;
    .end local v4           #source:Ljavax/xml/transform/dom/DOMSource;
    .end local v5           #transformer:Ljavax/xml/transform/Transformer;
    :goto_0
    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 968
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAttribute1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "attributeName"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 5
    .parameter "xmlFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 899
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 900
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 903
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    .line 904
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method public init1(Ljava/lang/String;)V
    .locals 8
    .parameter "xmlFile"

    .prologue
    .line 909
    const/4 v2, 0x0

    .line 911
    .local v2, featureReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 915
    .local v1, featureFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 916
    .end local v2           #featureReader:Ljava/io/FileReader;
    .local v3, featureReader:Ljava/io/FileReader;
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 917
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v5, "comm-feature"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 918
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 929
    if-eqz v3, :cond_0

    .line 930
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v2, v3

    .line 936
    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 929
    if-eqz v2, :cond_1

    .line 930
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 932
    :catch_1
    move-exception v0

    .line 933
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 923
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 924
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in comm-feature.conf parser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 929
    if-eqz v2, :cond_1

    .line 930
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 932
    :catch_3
    move-exception v0

    .line 933
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 925
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 926
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in comm-feature.conf parser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 929
    if-eqz v2, :cond_1

    .line 930
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 932
    :catch_5
    move-exception v0

    .line 933
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 928
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 929
    :goto_6
    if-eqz v2, :cond_2

    .line 930
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 928
    :cond_2
    :goto_7
    throw v4

    .line 932
    :catch_6
    move-exception v0

    .line 933
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v5, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException in featureReader.close() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 932
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    .line 933
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto :goto_6

    .line 925
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto :goto_5

    .line 923
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .line 920
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method
