.class Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PermissionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReqPermHandler"
.end annotation


# instance fields
.field localString:Ljava/lang/String;

.field final synthetic this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;


# direct methods
.method private constructor <init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;-><init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v0, "app"

    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SYSTEMAPPLIST:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v0, "swapp"

    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWSYSTEMAPPLIST:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :cond_2
    const-string v0, "fapp"

    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->FOREIGNAPPLIST:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_3
    const-string v0, "swfapp"

    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWFOREIGNAPPLIST:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contentType"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "proType"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    iput-object p2, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;->localString:Ljava/lang/String;

    .line 491
    return-void
.end method
