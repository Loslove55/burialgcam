.class public final Lafe;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lafe;->a:Ljava/lang/Object;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    sput-object v0, Lafe;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lael;
    .locals 8

    invoke-static {p0}, Lvd;->a(Ljava/lang/Object;)V

    new-instance v0, Lafr;

    invoke-direct {v0}, Lafr;-><init>()V

    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0}, Lafr;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lafr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Laer;

    invoke-direct {v1, p0}, Laer;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lafe;->a(Laer;Lafr;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Laej;

    const/16 v1, 0xcc

    const-string v2, "Error reading the XML-file"

    invoke-direct {v0, v2, v1, p0}, Laej;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    new-instance v1, Laer;

    check-cast p0, [B

    invoke-direct {v1, p0}, Laer;-><init>([B)V

    invoke-static {v1, v0}, Lafe;->a(Laer;Lafr;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/String;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    :try_start_1
    invoke-static {v1}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_1
    .catch Laej; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_0

    :catch_1
    move-exception v1

    iget v2, v1, Laej;->a:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_9

    invoke-virtual {v0}, Lafr;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Laet;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Laet;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    nop

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafq;->a(I)Z

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lafe;->a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    aget-object v2, p0, v1

    sget-object v3, Lafe;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    nop

    const/4 v2, 0x0

    aget-object v3, p0, v2

    check-cast v3, Lorg/w3c/dom/Node;

    new-instance v4, Lafd;

    invoke-direct {v4}, Lafd;-><init>()V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lafd;->a:Lafg;

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lvd;->a(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v4, v5, v6, v1}, Lvd;->a(Lafd;Lafg;Lorg/w3c/dom/Node;Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Lafq;->a(I)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v4, v0}, Lafh;->a(Lafd;Lafr;)Lael;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v4

    :cond_7
    new-instance p0, Laej;

    const/16 v0, 0xca

    const-string v1, "Invalid attributes of rdf:RDF element"

    invoke-direct {p0, v1, v0}, Laej;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    :goto_3
    new-instance p0, Lafd;

    invoke-direct {p0}, Lafd;-><init>()V

    return-object p0

    :cond_9
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private static a(Laer;Lafr;)Lorg/w3c/dom/Document;
    .locals 13

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Laer;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Laej; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget v1, v0, Laej;->a:I

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lafr;->b()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    :cond_2
    nop

    invoke-virtual {p0}, Laer;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    new-array v2, v1, [B

    new-instance v3, Laer;

    iget v4, p0, Laer;->b:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Laer;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Laer;->b:I

    const/16 v10, 0xb

    if-lt v5, v9, :cond_5

    if-ne v6, v10, :cond_4

    :goto_2
    if-lt v4, v8, :cond_3

    goto :goto_3

    :cond_3
    aget-byte p0, v2, v4

    invoke-static {p0}, Luu;->a(B)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Laer;->a([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    nop

    move-object p0, v3

    goto/16 :goto_8

    :cond_5
    if-ge v5, v9, :cond_e

    iget-object v9, p0, Laer;->a:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    const/16 v11, 0x80

    if-eq v6, v10, :cond_a

    const/16 v12, 0x7f

    if-ge v9, v12, :cond_6

    iget v10, v3, Laer;->b:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Laer;->a(I)V

    iget-object v10, v3, Laer;->a:[B

    iget v11, v3, Laer;->b:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v3, Laer;->b:I

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    goto :goto_7

    :cond_6
    const/16 v12, 0xc0

    if-ge v9, v12, :cond_7

    int-to-byte v9, v9

    invoke-static {v9}, Luu;->a(B)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Laer;->a([B)V

    nop

    goto :goto_7

    :cond_7
    const/4 v6, -0x1

    move v6, v9

    const/4 v7, -0x1

    :goto_4
    if-lt v7, v1, :cond_8

    goto :goto_5

    :cond_8
    and-int/lit16 v12, v6, 0x80

    if-ne v12, v11, :cond_9

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v6

    goto :goto_4

    :cond_9
    :goto_5
    nop

    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    nop

    move v8, v6

    const/16 v6, 0xb

    goto :goto_7

    :cond_a
    if-gtz v7, :cond_b

    goto :goto_6

    :cond_b
    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v11, :cond_d

    add-int/lit8 v10, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_c

    invoke-virtual {v3, v2, v10}, Laer;->a([BI)V

    nop

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    move v8, v10

    goto :goto_7

    :cond_d
    :goto_6
    aget-byte v6, v2, v4

    invoke-static {v6}, Luu;->a(B)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Laer;->a([B)V

    sub-int/2addr v5, v8

    nop

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_7
    add-int/lit8 v5, v5, 0x1

    nop

    goto/16 :goto_1

    :cond_e
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The index exceeds the valid buffer area"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_8
    invoke-virtual {p1}, Lafr;->a()Z

    move-result p1

    if-eqz p1, :cond_10

    :try_start_1
    invoke-virtual {p0}, Laer;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Laet;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Laer;->a()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Laet;-><init>(Ljava/io/Reader;)V

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p0, Laej;

    const/16 p1, 0x9

    const-string v1, "Unsupported Encoding"

    invoke-direct {p0, v1, p1, v0}, Laej;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0

    :cond_10
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Laer;->a()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lafe;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 3

    :try_start_0
    sget-object v0, Lafe;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Laej;

    const/16 v1, 0xcc

    const-string v2, "Error reading the XML-file"

    invoke-direct {v0, v2, v1, p0}, Laej;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Laej;

    const/4 v1, 0x0

    const-string v2, "XML Parser not correctly configured"

    invoke-direct {v0, v2, v1, p0}, Laej;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Laej;

    const/16 v1, 0xc9

    const-string v2, "XML parsing failure"

    invoke-direct {v0, v2, v1, p0}, Laej;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xpacket"

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmpmeta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "xapmeta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    nop

    const-string v5, "adobe:ns:meta/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_3
    if-nez p1, :cond_5

    const-string v5, "RDF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    aput-object v2, p2, v0

    sget-object p0, Lafe;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-object p2

    :cond_5
    :goto_2
    invoke-static {v2, p1, p2}, Lafe;->a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    return-object v2

    :cond_7
    nop

    invoke-static {v2, v0, p2}, Lafe;->a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
