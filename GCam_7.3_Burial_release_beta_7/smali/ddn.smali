.class final synthetic Lddn;
.super Ljava/lang/Object;

# interfaces
.implements Lggv;


# instance fields
.field private final a:Ldep;


# direct methods
.method public constructor <init>(Ldep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddn;->a:Ldep;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lddn;->a:Ldep;

    invoke-interface {v0}, Llum;->close()V

    return-void
.end method
