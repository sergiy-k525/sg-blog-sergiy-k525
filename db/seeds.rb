def sample_titles
  [
    "10 Step To Successfully Outsourcing Your Online Business",
    "21 Ways to Dominate Youtube: The Ultimate Guide",
    "Parenting Guru: From Chaos to Access",
    "Which One Deserves To Die?",
    "Rob Banks Legally"
  ]
end

def sample_bodies
  [
    "They got funnier and funnier. This year we went to Namibia to make a film
    and the lawyers got out a film we’d done [on Top Gear] in Botswana. And the
    lawyers go right, there’s a scene in there were you go, this scenery is beautiful,
    so watch that you don’t do that.",
    "The presence of such whitespace in a request might be an attempt to
    trick a server into ignoring that field or processing the line after
    it as a new request, either of which might result in a security
    vulnerability if other implementations within the request chain
    interpret the same message differently.  Likewise, the presence of
    such whitespace in a response might be ignored by some clients or
    cause others to cease parsing.",
    "When installing Qt 5, Qt 4.x should be uninstalled, to prevent interference.
    You can download the official Qt 5 dmg and install it that way, as previously
    explained. Once installed via the package, one simply needs to set the QMAKE
    environment variable and bundle. Or you can upgrade with Homebrew,
    in the following way",
    "Header fields are fully extensible: there is no limit on the
    introduction of new field names, each presumably defining new
    semantics, nor on the number of header fields used in a given
    message.  Existing fields are defined in each part of this
    specification and in many other specifications outside this document
    set.",
    "No whitespace is allowed between the header field-name and colon.  In
    the past, differences in the handling of such whitespace have led to
    security vulnerabilities in request routing and response handling.  A
    server MUST reject any received request message that contains
    whitespace between a header field-name and colon with a response code
    of 400 (Bad Request).  A proxy MUST remove any such whitespace from a
    response message before forwarding the message downstream."
  ]
end

Post.delete_all
5.times { Post.create( title: sample_titles.sample, body: sample_bodies.sample) }
