pragma solidity ^0.8.0;
pragma solidity ^0.8.1;
pragma solidity ^0.8.2;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.2;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.1;
pragma solidity ^0.8.0;
pragma solidity ^0.8.2;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.0;
pragma solidity ^0.8.4;
pragma solidity ^0.8.4;
pragma solidity ^0.8.4;

///  @dev External interface of AccessControl declared to support ERC165 detection.
interface IAccessControlUpgradeable {
    ///  @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
    ///  `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
    ///  {RoleAdminChanged} not being emitted signaling this.
    ///  _Available since v3.1._
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    ///  @dev Emitted when `account` is granted `role`.
    ///  `sender` is the account that originated the contract call, an admin role
    ///  bearer except when using {AccessControl-_setupRole}.
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    ///  @dev Emitted when `account` is revoked `role`.
    ///  `sender` is the account that originated the contract call:
    ///    - if using `revokeRole`, it is the admin role bearer
    ///    - if using `renounceRole`, it is the role bearer (i.e. `account`)
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    ///  @dev Returns `true` if `account` has been granted `role`.
    function hasRole(bytes32 role, address account) external view returns (bool);

    ///  @dev Returns the admin role that controls `role`. See {grantRole} and
    ///  {revokeRole}.
    ///  To change a role's admin, use {AccessControl-_setRoleAdmin}.
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    ///  @dev Grants `role` to `account`.
    ///  If `account` had not been already granted `role`, emits a {RoleGranted}
    ///  event.
    ///  Requirements:
    ///  - the caller must have ``role``'s admin role.
    function grantRole(bytes32 role, address account) external;

    ///  @dev Revokes `role` from `account`.
    ///  If `account` had been granted `role`, emits a {RoleRevoked} event.
    ///  Requirements:
    ///  - the caller must have ``role``'s admin role.
    function revokeRole(bytes32 role, address account) external;

    ///  @dev Revokes `role` from the calling account.
    ///  Roles are often managed via {grantRole} and {revokeRole}: this function's
    ///  purpose is to provide a mechanism for accounts to lose their privileges
    ///  if they are compromised (such as when a trusted device is misplaced).
    ///  If the calling account had been granted `role`, emits a {RoleRevoked}
    ///  event.
    ///  Requirements:
    ///  - the caller must be `account`.
    function renounceRole(bytes32 role, address account) external;
}

///  @dev Collection of functions related to the address type
library AddressUpgradeable {
    ///  @dev Returns true if `account` is a contract.
    ///  [IMPORTANT]
    ///  ====
    ///  It is unsafe to assume that an address for which this function returns
    ///  false is an externally-owned account (EOA) and not a contract.
    ///  Among others, `isContract` will return false for the following
    ///  types of addresses:
    ///   - an externally-owned account
    ///   - a contract in construction
    ///   - an address where a contract will be created
    ///   - an address where a contract lived, but was destroyed
    ///  ====
    ///  [IMPORTANT]
    ///  ====
    ///  You shouldn't rely on `isContract` to protect against flash loan attacks!
    ///  Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
    ///  like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
    ///  constructor.
    ///  ====
    function isContract(address account) internal view returns (bool) {
        return account.code.length > 0;
    }

    ///  @dev Replacement for Solidity's `transfer`: sends `amount` wei to
    ///  `recipient`, forwarding all available gas and reverting on errors.
    ///  https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
    ///  of certain opcodes, possibly making contracts go over the 2300 gas limit
    ///  imposed by `transfer`, making them unable to receive funds via
    ///  `transfer`. {sendValue} removes this limitation.
    ///  https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
    ///  IMPORTANT: because control is transferred to `recipient`, care must be
    ///  taken to not create reentrancy vulnerabilities. Consider using
    ///  {ReentrancyGuard} or the
    ///  https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");
        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    ///  @dev Performs a Solidity function call using a low level `call`. A
    ///  plain `call` is an unsafe replacement for a function call: use this
    ///  function instead.
    ///  If `target` reverts with a revert reason, it is bubbled up by this
    ///  function (like regular Solidity function calls).
    ///  Returns the raw returned data. To convert to the expected return value,
    ///  use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
    ///  Requirements:
    ///  - `target` must be a contract.
    ///  - calling `target` with `data` must not revert.
    ///  _Available since v3.1._
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
    ///  `errorMessage` as a fallback revert reason when `target` reverts.
    ///  _Available since v3.1._
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
    ///  but also transferring `value` wei to `target`.
    ///  Requirements:
    ///  - the calling contract must have an ETH balance of at least `value`.
    ///  - the called Solidity function must be `payable`.
    ///  _Available since v3.1._
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    ///  @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
    ///  with `errorMessage` as a fallback revert reason when `target` reverts.
    ///  _Available since v3.1._
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
    ///  but performing a static call.
    ///  _Available since v3.3._
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
    ///  but performing a static call.
    ///  _Available since v3.3._
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    ///  @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
    ///  the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
    ///  _Available since v4.8._
    function verifyCallResultFromTarget(address target, bool success, bytes memory returndata, string memory errorMessage) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    ///  @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
    ///  revert reason or using the provided one.
    ///  _Available since v4.3._
    function verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        if (returndata.length > 0) {
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

///  @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
///  behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
///  external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
///  function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
///  The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
///  reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
///  case an upgrade adds a module that needs to be initialized.
///  For example:
///  [.hljs-theme-light.nopadding]
///  ```
///  contract MyToken is ERC20Upgradeable {
///      function initialize() initializer public {
///          __ERC20_init("MyToken", "MTK");
///      }
///  }
///  contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
///      function initializeV2() reinitializer(2) public {
///          __ERC20Permit_init("MyToken");
///      }
///  }
///  ```
///  TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
///  possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
///  CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
///  that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
///  [CAUTION]
///  ====
///  Avoid leaving a contract uninitialized.
///  An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
///  contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
///  the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
///  [.hljs-theme-light.nopadding]
///  ```
///  /// @custom:oz-upgrades-unsafe-allow constructor
///  constructor() {
///      _disableInitializers();
///  }
///  ```
///  ====
abstract contract Initializable {
    ///  @dev Triggered when the contract has been initialized or reinitialized.
    event Initialized(uint8 version);

    ///  @dev Indicates that the contract has been initialized.
    ///  @custom:oz-retyped-from bool
    uint8 private _initialized;
    ///  @dev Indicates that the contract is in the process of being initialized.
    bool private _initializing;

    ///  @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
    ///  `onlyInitializing` functions can be used to initialize parent contracts.
    ///  Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
    ///  constructor.
    ///  Emits an {Initialized} event.
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require((isTopLevelCall && (_initialized < 1)) || ((!AddressUpgradeable.isContract(address(this))) && (_initialized == 1)), "Initializable: contract is already initialized");
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    ///  @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
    ///  contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
    ///  used to initialize parent contracts.
    ///  A reinitializer may be used after the original initialization step. This is essential to configure modules that
    ///  are added through upgrades and that require initialization.
    ///  When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
    ///  cannot be nested. If one is invoked in the context of another, execution will revert.
    ///  Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
    ///  a contract, executing them in the right order is up to the developer or operator.
    ///  WARNING: setting the version to 255 will prevent any future reinitialization.
    ///  Emits an {Initialized} event.
    modifier reinitializer(uint8 version) {
        require((!_initializing) && (_initialized < version), "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    ///  @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
    ///  {initializer} and {reinitializer} modifiers, directly or indirectly.
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    ///  @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
    ///  Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
    ///  to any version. It is recommended to use this to lock implementation contracts that are designed to be called
    ///  through proxies.
    ///  Emits an {Initialized} event the first time it is successfully executed.
    function _disableInitializers() virtual internal {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    ///  @dev Returns the highest version that has been initialized. See {reinitializer}.
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    ///  @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

///  @dev Provides information about the current execution context, including the
///  sender of the transaction and its data. While these are generally available
///  via msg.sender and msg.data, they should not be accessed in such a direct
///  manner, since when dealing with meta-transactions the account sending and
///  paying for execution may not be the actual sender (as far as an application
///  is concerned).
///  This contract is only required for intermediate, library-like contracts.
abstract contract ContextUpgradeable is Initializable {
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[50] private __gap;

    function __Context_init() internal onlyInitializing() {}

    function __Context_init_unchained() internal onlyInitializing() {}

    function _msgSender() virtual internal view returns (address) {
        return msg.sender;
    }

    function _msgData() virtual internal view returns (bytes calldata) {
        return msg.data;
    }
}

///  @dev Interface of the ERC165 standard, as defined in the
///  https://eips.ethereum.org/EIPS/eip-165[EIP].
///  Implementers can declare support of contract interfaces, which can then be
///  queried by others ({ERC165Checker}).
///  For an implementation, see {ERC165}.
interface IERC165Upgradeable {
    ///  @dev Returns true if this contract implements the interface defined by
    ///  `interfaceId`. See the corresponding
    ///  https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
    ///  to learn more about how these ids are created.
    ///  This function call must use less than 30 000 gas.
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

///  @dev Implementation of the {IERC165} interface.
///  Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
///  for the additional interface id that will be supported. For example:
///  ```solidity
///  function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
///      return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
///  }
///  ```
///  Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[50] private __gap;

    function __ERC165_init() internal onlyInitializing() {}

    function __ERC165_init_unchained() internal onlyInitializing() {}

    ///  @dev See {IERC165-supportsInterface}.
    function supportsInterface(bytes4 interfaceId) virtual override public view returns (bool) {
        return interfaceId == type(IERC165Upgradeable).interfaceId;
    }
}

///  @dev Standard math utilities missing in the Solidity language.
library MathUpgradeable {
    enum Rounding { Down, Up, Zero }

    ///  @dev Returns the largest of two numbers.
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a > b) ? a : b;
    }

    ///  @dev Returns the smallest of two numbers.
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a < b) ? a : b;
    }

    ///  @dev Returns the average of two numbers. The result is rounded towards
    ///  zero.
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a & b) + ((a ^ b) / 2);
    }

    ///  @dev Returns the ceiling of the division of two numbers.
    ///  This differs from standard division with `/` in that it rounds up instead
    ///  of rounding down.
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a == 0) ? 0 : (((a - 1) / b) + 1);
    }

    ///  @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    ///  @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
    ///  with further edits by Uniswap Labs also under MIT license.
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            uint256 prod0;
            uint256 prod1;
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }
            if (prod1 == 0) {
                return prod0 / denominator;
            }
            require(denominator > prod1);
            uint256 remainder;
            assembly {
                remainder := mulmod(x, y, denominator)
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }
            uint256 twos = denominator & ((~denominator) + 1);
            assembly {
                denominator := div(denominator, twos)
                prod0 := div(prod0, twos)
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;
            uint256 inverse = (3 * denominator) ^ 2;
            inverse *= 2 - (denominator * inverse);
            inverse *= 2 - (denominator * inverse);
            inverse *= 2 - (denominator * inverse);
            inverse *= 2 - (denominator * inverse);
            inverse *= 2 - (denominator * inverse);
            inverse *= 2 - (denominator * inverse);
            result = prod0 * inverse;
            return result;
        }
    }

    ///  @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if ((rounding == Rounding.Up) && (mulmod(x, y, denominator) > 0)) {
            result += 1;
        }
        return result;
    }

    ///  @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
    ///  Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 result = 1 << (log2(a) >> 1);
        unchecked {
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            result = (result + (a / result)) >> 1;
            return min(result, a / result);
        }
    }

    ///  @notice Calculates sqrt(a), following the selected rounding direction.
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (((rounding == Rounding.Up) && ((result * result) < a)) ? 1 : 0);
        }
    }

    ///  @dev Return the log in base 2, rounded down, of a positive value.
    ///  Returns 0 if given 0.
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if ((value >> 128) > 0) {
                value >>= 128;
                result += 128;
            }
            if ((value >> 64) > 0) {
                value >>= 64;
                result += 64;
            }
            if ((value >> 32) > 0) {
                value >>= 32;
                result += 32;
            }
            if ((value >> 16) > 0) {
                value >>= 16;
                result += 16;
            }
            if ((value >> 8) > 0) {
                value >>= 8;
                result += 8;
            }
            if ((value >> 4) > 0) {
                value >>= 4;
                result += 4;
            }
            if ((value >> 2) > 0) {
                value >>= 2;
                result += 2;
            }
            if ((value >> 1) > 0) {
                result += 1;
            }
        }
        return result;
    }

    ///  @dev Return the log in base 2, following the selected rounding direction, of a positive value.
    ///  Returns 0 if given 0.
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (((rounding == Rounding.Up) && ((1 << result) < value)) ? 1 : 0);
        }
    }

    ///  @dev Return the log in base 10, rounded down, of a positive value.
    ///  Returns 0 if given 0.
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= (10 ** 64)) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= (10 ** 32)) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= (10 ** 16)) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= (10 ** 8)) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= (10 ** 4)) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= (10 ** 2)) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= (10 ** 1)) {
                result += 1;
            }
        }
        return result;
    }

    ///  @dev Return the log in base 10, following the selected rounding direction, of a positive value.
    ///  Returns 0 if given 0.
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (((rounding == Rounding.Up) && ((10 ** result) < value)) ? 1 : 0);
        }
    }

    ///  @dev Return the log in base 256, rounded down, of a positive value.
    ///  Returns 0 if given 0.
    ///  Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if ((value >> 128) > 0) {
                value >>= 128;
                result += 16;
            }
            if ((value >> 64) > 0) {
                value >>= 64;
                result += 8;
            }
            if ((value >> 32) > 0) {
                value >>= 32;
                result += 4;
            }
            if ((value >> 16) > 0) {
                value >>= 16;
                result += 2;
            }
            if ((value >> 8) > 0) {
                result += 1;
            }
        }
        return result;
    }

    ///  @dev Return the log in base 10, following the selected rounding direction, of a positive value.
    ///  Returns 0 if given 0.
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (((rounding == Rounding.Up) && ((1 << (result * 8)) < value)) ? 1 : 0);
        }
    }
}

///  @dev String operations.
library StringsUpgradeable {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    ///  @dev Converts a `uint256` to its ASCII `string` decimal representation.
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = MathUpgradeable.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    ///  @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, MathUpgradeable.log256(value) + 1);
        }
    }

    ///  @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes((2 * length) + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = (2 * length) + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    ///  @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }
}

///  @dev Contract module that allows children to implement role-based access
///  control mechanisms. This is a lightweight version that doesn't allow enumerating role
///  members except through off-chain means by accessing the contract event logs. Some
///  applications may benefit from on-chain enumerability, for those cases see
///  {AccessControlEnumerable}.
///  Roles are referred to by their `bytes32` identifier. These should be exposed
///  in the external API and be unique. The best way to achieve this is by
///  using `public constant` hash digests:
///  ```
///  bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
///  ```
///  Roles can be used to represent a set of permissions. To restrict access to a
///  function call, use {hasRole}:
///  ```
///  function foo() public {
///      require(hasRole(MY_ROLE, msg.sender));
///      ...
///  }
///  ```
///  Roles can be granted and revoked dynamically via the {grantRole} and
///  {revokeRole} functions. Each role has an associated admin role, and only
///  accounts that have a role's admin role can call {grantRole} and {revokeRole}.
///  By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
///  that only accounts with this role will be able to grant or revoke other
///  roles. More complex role relationships can be created by using
///  {_setRoleAdmin}.
///  WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
///  grant and revoke this role. Extra precautions should be taken to secure
///  accounts that have been granted it.
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[49] private __gap;

    ///  @dev Modifier that checks that an account has a specific role. Reverts
    ///  with a standardized message including the required role.
    ///  The format of the revert reason is given by the following regular expression:
    ///   /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
    ///  _Available since v4.1._
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    function __AccessControl_init() internal onlyInitializing() {}

    function __AccessControl_init_unchained() internal onlyInitializing() {}

    ///  @dev See {IERC165-supportsInterface}.
    function supportsInterface(bytes4 interfaceId) virtual override public view returns (bool) {
        return (interfaceId == type(IAccessControlUpgradeable).interfaceId) || super.supportsInterface(interfaceId);
    }

    ///  @dev Returns `true` if `account` has been granted `role`.
    function hasRole(bytes32 role, address account) virtual override public view returns (bool) {
        return _roles[role].members[account];
    }

    ///  @dev Revert with a standard message if `_msgSender()` is missing `role`.
    ///  Overriding this function changes the behavior of the {onlyRole} modifier.
    ///  Format of the revert message is described in {_checkRole}.
    ///  _Available since v4.6._
    function _checkRole(bytes32 role) virtual internal view {
        _checkRole(role, _msgSender());
    }

    ///  @dev Revert with a standard message if `account` is missing `role`.
    ///  The format of the revert reason is given by the following regular expression:
    ///   /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
    function _checkRole(bytes32 role, address account) virtual internal view {
        if (!hasRole(role, account)) {
            revert(string(abi.encodePacked("AccessControl: account ", StringsUpgradeable.toHexString(account), " is missing role ", StringsUpgradeable.toHexString(uint256(role), 32))));
        }
    }

    ///  @dev Returns the admin role that controls `role`. See {grantRole} and
    ///  {revokeRole}.
    ///  To change a role's admin, use {_setRoleAdmin}.
    function getRoleAdmin(bytes32 role) virtual override public view returns (bytes32) {
        return _roles[role].adminRole;
    }

    ///  @dev Grants `role` to `account`.
    ///  If `account` had not been already granted `role`, emits a {RoleGranted}
    ///  event.
    ///  Requirements:
    ///  - the caller must have ``role``'s admin role.
    ///  May emit a {RoleGranted} event.
    function grantRole(bytes32 role, address account) virtual override public onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    ///  @dev Revokes `role` from `account`.
    ///  If `account` had been granted `role`, emits a {RoleRevoked} event.
    ///  Requirements:
    ///  - the caller must have ``role``'s admin role.
    ///  May emit a {RoleRevoked} event.
    function revokeRole(bytes32 role, address account) virtual override public onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    ///  @dev Revokes `role` from the calling account.
    ///  Roles are often managed via {grantRole} and {revokeRole}: this function's
    ///  purpose is to provide a mechanism for accounts to lose their privileges
    ///  if they are compromised (such as when a trusted device is misplaced).
    ///  If the calling account had been revoked `role`, emits a {RoleRevoked}
    ///  event.
    ///  Requirements:
    ///  - the caller must be `account`.
    ///  May emit a {RoleRevoked} event.
    function renounceRole(bytes32 role, address account) virtual override public {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");
        _revokeRole(role, account);
    }

    ///  @dev Grants `role` to `account`.
    ///  If `account` had not been already granted `role`, emits a {RoleGranted}
    ///  event. Note that unlike {grantRole}, this function doesn't perform any
    ///  checks on the calling account.
    ///  May emit a {RoleGranted} event.
    ///  [WARNING]
    ///  ====
    ///  This function should only be called from the constructor when setting
    ///  up the initial roles for the system.
    ///  Using this function in any other way is effectively circumventing the admin
    ///  system imposed by {AccessControl}.
    ///  ====
    ///  NOTE: This function is deprecated in favor of {_grantRole}.
    function _setupRole(bytes32 role, address account) virtual internal {
        _grantRole(role, account);
    }

    ///  @dev Sets `adminRole` as ``role``'s admin role.
    ///  Emits a {RoleAdminChanged} event.
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) virtual internal {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    ///  @dev Grants `role` to `account`.
    ///  Internal function without access restriction.
    ///  May emit a {RoleGranted} event.
    function _grantRole(bytes32 role, address account) virtual internal {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    ///  @dev Revokes `role` from `account`.
    ///  Internal function without access restriction.
    ///  May emit a {RoleRevoked} event.
    function _revokeRole(bytes32 role, address account) virtual internal {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}

///  @dev Contract module which provides a basic access control mechanism, where
///  there is an account (an owner) that can be granted exclusive access to
///  specific functions.
///  By default, the owner account will be the one that deploys the contract. This
///  can later be changed with {transferOwnership}.
///  This module is used through inheritance. It will make available the modifier
///  `onlyOwner`, which can be applied to your functions to restrict their use to
///  the owner.
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    address private _owner;
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[49] private __gap;

    ///  @dev Throws if called by any account other than the owner.
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    ///  @dev Initializes the contract setting the deployer as the initial owner.
    function __Ownable_init() internal onlyInitializing() {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing() {
        _transferOwnership(_msgSender());
    }

    ///  @dev Returns the address of the current owner.
    function owner() virtual public view returns (address) {
        return _owner;
    }

    ///  @dev Throws if the sender is not the owner.
    function _checkOwner() virtual internal view {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    ///  @dev Leaves the contract without owner. It will not be possible to call
    ///  `onlyOwner` functions anymore. Can only be called by the current owner.
    ///  NOTE: Renouncing ownership will leave the contract without an owner,
    ///  thereby removing any functionality that is only available to the owner.
    function renounceOwnership() virtual public onlyOwner() {
        _transferOwnership(address(0));
    }

    ///  @dev Transfers ownership of the contract to a new account (`newOwner`).
    ///  Can only be called by the current owner.
    function transferOwnership(address newOwner) virtual public onlyOwner() {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    ///  @dev Transfers ownership of the contract to a new account (`newOwner`).
    ///  Internal function without access restriction.
    function _transferOwnership(address newOwner) virtual internal {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

///  @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
///  proxy whose upgrades are fully controlled by the current implementation.
interface IERC1822ProxiableUpgradeable {
    ///  @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
    ///  address.
    ///  IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
    ///  bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
    ///  function revert if invoked through a proxy.
    function proxiableUUID() external view returns (bytes32);
}

///  @dev This is the interface that {BeaconProxy} expects of its beacon.
interface IBeaconUpgradeable {
    ///  @dev Must return an address that can be used as a delegate call target.
    ///  {BeaconProxy} will check that this address is a contract.
    function implementation() external view returns (address);
}

///  @dev Library for reading and writing primitive types to specific storage slots.
///  Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
///  This library helps with reading and writing to such slots without the need for inline assembly.
///  The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
///  Example usage to set ERC1967 implementation slot:
///  ```
///  contract ERC1967 {
///      bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
///      function _getImplementation() internal view returns (address) {
///          return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
///      }
///      function _setImplementation(address newImplementation) internal {
///          require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
///          StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
///      }
///  }
///  ```
///  _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
library StorageSlotUpgradeable {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    ///  @dev Returns an `AddressSlot` with member `value` located at `slot`.
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `BooleanSlot` with member `value` located at `slot`.
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `Uint256Slot` with member `value` located at `slot`.
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }
}

///  @dev This abstract contract provides getters and event emitting update functions for
///  https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
///  _Available since v4.1._
///  @custom:oz-upgrades-unsafe-allow delegatecall
abstract contract ERC1967UpgradeUpgradeable is Initializable {
    ///  @dev Emitted when the implementation is upgraded.
    event Upgraded(address indexed implementation);

    ///  @dev Emitted when the admin account has changed.
    event AdminChanged(address previousAdmin, address newAdmin);

    ///  @dev Emitted when the beacon is upgraded.
    event BeaconUpgraded(address indexed beacon);

    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;
    ///  @dev Storage slot with the address of the current implementation.
    ///  This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
    ///  validated in the constructor.
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
    ///  @dev Storage slot with the admin of the contract.
    ///  This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
    ///  validated in the constructor.
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;
    ///  @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
    ///  This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[50] private __gap;

    function __ERC1967Upgrade_init() internal onlyInitializing() {}

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing() {}

    ///  @dev Returns the current implementation address.
    function _getImplementation() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    ///  @dev Stores a new address in the EIP1967 implementation slot.
    function _setImplementation(address newImplementation) private {
        require(AddressUpgradeable.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    ///  @dev Perform implementation upgrade
    ///  Emits an {Upgraded} event.
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    ///  @dev Perform implementation upgrade with additional setup call.
    ///  Emits an {Upgraded} event.
    function _upgradeToAndCall(address newImplementation, bytes memory data, bool forceCall) internal {
        _upgradeTo(newImplementation);
        if ((data.length > 0) || forceCall) {
            _functionDelegateCall(newImplementation, data);
        }
    }

    ///  @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
    ///  Emits an {Upgraded} event.
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data, bool forceCall) internal {
        if (StorageSlotUpgradeable.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    ///  @dev Returns the current admin.
    function _getAdmin() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value;
    }

    ///  @dev Stores a new address in the EIP1967 admin slot.
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    ///  @dev Changes the admin of the proxy.
    ///  Emits an {AdminChanged} event.
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    ///  @dev Returns the current beacon.
    function _getBeacon() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value;
    }

    ///  @dev Stores a new beacon in the EIP1967 beacon slot.
    function _setBeacon(address newBeacon) private {
        require(AddressUpgradeable.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(AddressUpgradeable.isContract(IBeaconUpgradeable(newBeacon).implementation()), "ERC1967: beacon implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    ///  @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
    ///  not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
    ///  Emits a {BeaconUpgraded} event.
    function _upgradeBeaconToAndCall(address newBeacon, bytes memory data, bool forceCall) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if ((data.length > 0) || forceCall) {
            _functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        }
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
    ///  but performing a delegate call.
    ///  _Available since v3.4._
    function _functionDelegateCall(address target, bytes memory data) private returns (bytes memory) {
        require(AddressUpgradeable.isContract(target), "Address: delegate call to non-contract");
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return AddressUpgradeable.verifyCallResult(success, returndata, "Address: low-level delegate call failed");
    }
}

///  @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
///  {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
///  A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
///  reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
///  `UUPSUpgradeable` with a custom implementation of upgrades.
///  The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
///  _Available since v4.1._
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable, ERC1967UpgradeUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[50] private __gap;

    ///  @dev Check that the execution is being performed through a delegatecall call and that the execution context is
    ///  a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
    ///  for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
    ///  function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
    ///  fail.
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    ///  @dev Check that the execution is not being performed through a delegate call. This allows a function to be
    ///  callable on the implementing contract but not through proxies.
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    function __UUPSUpgradeable_init() internal onlyInitializing() {}

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing() {}

    ///  @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
    ///  implementation. It is used to validate the implementation's compatibility when performing an upgrade.
    ///  IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
    ///  bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
    ///  function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
    function proxiableUUID() virtual override external view notDelegated() returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    ///  @dev Upgrade the implementation of the proxy to `newImplementation`.
    ///  Calls {_authorizeUpgrade}.
    ///  Emits an {Upgraded} event.
    function upgradeTo(address newImplementation) virtual external onlyProxy() {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    ///  @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
    ///  encoded in `data`.
    ///  Calls {_authorizeUpgrade}.
    ///  Emits an {Upgraded} event.
    function upgradeToAndCall(address newImplementation, bytes memory data) virtual external payable onlyProxy() {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    ///  @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
    ///  {upgradeTo} and {upgradeToAndCall}.
    ///  Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
    ///  ```solidity
    ///  function _authorizeUpgrade(address) internal override onlyOwner {}
    ///  ```
    function _authorizeUpgrade(address newImplementation) virtual internal;
}

///  @dev Contract module which allows children to implement an emergency stop
///  mechanism that can be triggered by an authorized account.
///  This module is used through inheritance. It will make available the
///  modifiers `whenNotPaused` and `whenPaused`, which can be applied to
///  the functions of your contract. Note that they will not be pausable by
///  simply including this module, only once the modifiers are put in place.
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    ///  @dev Emitted when the pause is triggered by `account`.
    event Paused(address account);

    ///  @dev Emitted when the pause is lifted by `account`.
    event Unpaused(address account);

    bool private _paused;
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[49] private __gap;

    ///  @dev Modifier to make a function callable only when the contract is not paused.
    ///  Requirements:
    ///  - The contract must not be paused.
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    ///  @dev Modifier to make a function callable only when the contract is paused.
    ///  Requirements:
    ///  - The contract must be paused.
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    ///  @dev Initializes the contract in unpaused state.
    function __Pausable_init() internal onlyInitializing() {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing() {
        _paused = false;
    }

    ///  @dev Returns true if the contract is paused, and false otherwise.
    function paused() virtual public view returns (bool) {
        return _paused;
    }

    ///  @dev Throws if the contract is paused.
    function _requireNotPaused() virtual internal view {
        require(!paused(), "Pausable: paused");
    }

    ///  @dev Throws if the contract is not paused.
    function _requirePaused() virtual internal view {
        require(paused(), "Pausable: not paused");
    }

    ///  @dev Triggers stopped state.
    ///  Requirements:
    ///  - The contract must not be paused.
    function _pause() virtual internal whenNotPaused() {
        _paused = true;
        emit Paused(_msgSender());
    }

    ///  @dev Returns to normal state.
    ///  Requirements:
    ///  - The contract must be paused.
    function _unpause() virtual internal whenPaused() {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

///  @dev Interface of the ERC20 standard as defined in the EIP.
interface IERC20Upgradeable {
    ///  @dev Emitted when `value` tokens are moved from one account (`from`) to
    ///  another (`to`).
    ///  Note that `value` may be zero.
    event Transfer(address indexed from, address indexed to, uint256 value);

    ///  @dev Emitted when the allowance of a `spender` for an `owner` is set by
    ///  a call to {approve}. `value` is the new allowance.
    event Approval(address indexed owner, address indexed spender, uint256 value);

    ///  @dev Returns the amount of tokens in existence.
    function totalSupply() external view returns (uint256);

    ///  @dev Returns the amount of tokens owned by `account`.
    function balanceOf(address account) external view returns (uint256);

    ///  @dev Moves `amount` tokens from the caller's account to `to`.
    ///  Returns a boolean value indicating whether the operation succeeded.
    ///  Emits a {Transfer} event.
    function transfer(address to, uint256 amount) external returns (bool);

    ///  @dev Returns the remaining number of tokens that `spender` will be
    ///  allowed to spend on behalf of `owner` through {transferFrom}. This is
    ///  zero by default.
    ///  This value changes when {approve} or {transferFrom} are called.
    function allowance(address owner, address spender) external view returns (uint256);

    ///  @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
    ///  Returns a boolean value indicating whether the operation succeeded.
    ///  IMPORTANT: Beware that changing an allowance with this method brings the risk
    ///  that someone may use both the old and the new allowance by unfortunate
    ///  transaction ordering. One possible solution to mitigate this race
    ///  condition is to first reduce the spender's allowance to 0 and set the
    ///  desired value afterwards:
    ///  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    ///  Emits an {Approval} event.
    function approve(address spender, uint256 amount) external returns (bool);

    ///  @dev Moves `amount` tokens from `from` to `to` using the
    ///  allowance mechanism. `amount` is then deducted from the caller's
    ///  allowance.
    ///  Returns a boolean value indicating whether the operation succeeded.
    ///  Emits a {Transfer} event.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

///  @dev Interface for the optional metadata functions from the ERC20 standard.
///  _Available since v4.1._
interface IERC20MetadataUpgradeable is IERC20Upgradeable {
    ///  @dev Returns the name of the token.
    function name() external view returns (string memory);

    ///  @dev Returns the symbol of the token.
    function symbol() external view returns (string memory);

    ///  @dev Returns the decimals places of the token.
    function decimals() external view returns (uint8);
}

///  @dev Implementation of the {IERC20} interface.
///  This implementation is agnostic to the way tokens are created. This means
///  that a supply mechanism has to be added in a derived contract using {_mint}.
///  For a generic mechanism see {ERC20PresetMinterPauser}.
///  TIP: For a detailed writeup see our guide
///  https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
///  to implement supply mechanisms].
///  We have followed general OpenZeppelin Contracts guidelines: functions revert
///  instead returning `false` on failure. This behavior is nonetheless
///  conventional and does not conflict with the expectations of ERC20
///  applications.
///  Additionally, an {Approval} event is emitted on calls to {transferFrom}.
///  This allows applications to reconstruct the allowance for all accounts just
///  by listening to said events. Other implementations of the EIP may not emit
///  these events, as it isn't required by the specification.
///  Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
///  functions have been added to mitigate the well-known issues around setting
///  allowances. See {IERC20-approve}.
contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable {
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[45] private __gap;

    ///  @dev Sets the values for {name} and {symbol}.
    ///  The default value of {decimals} is 18. To select a different value for
    ///  {decimals} you should overload it.
    ///  All two of these values are immutable: they can only be set once during
    ///  construction.
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing() {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing() {
        _name = name_;
        _symbol = symbol_;
    }

    ///  @dev Returns the name of the token.
    function name() virtual override public view returns (string memory) {
        return _name;
    }

    ///  @dev Returns the symbol of the token, usually a shorter version of the
    ///  name.
    function symbol() virtual override public view returns (string memory) {
        return _symbol;
    }

    ///  @dev Returns the number of decimals used to get its user representation.
    ///  For example, if `decimals` equals `2`, a balance of `505` tokens should
    ///  be displayed to a user as `5.05` (`505 / 10 ** 2`).
    ///  Tokens usually opt for a value of 18, imitating the relationship between
    ///  Ether and Wei. This is the value {ERC20} uses, unless this function is
    ///  overridden;
    ///  NOTE: This information is only used for _display_ purposes: it in
    ///  no way affects any of the arithmetic of the contract, including
    ///  {IERC20-balanceOf} and {IERC20-transfer}.
    function decimals() virtual override public view returns (uint8) {
        return 18;
    }

    ///  @dev See {IERC20-totalSupply}.
    function totalSupply() virtual override public view returns (uint256) {
        return _totalSupply;
    }

    ///  @dev See {IERC20-balanceOf}.
    function balanceOf(address account) virtual override public view returns (uint256) {
        return _balances[account];
    }

    ///  @dev See {IERC20-transfer}.
    ///  Requirements:
    ///  - `to` cannot be the zero address.
    ///  - the caller must have a balance of at least `amount`.
    function transfer(address to, uint256 amount) virtual override public returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    ///  @dev See {IERC20-allowance}.
    function allowance(address owner, address spender) virtual override public view returns (uint256) {
        return _allowances[owner][spender];
    }

    ///  @dev See {IERC20-approve}.
    ///  NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
    ///  `transferFrom`. This is semantically equivalent to an infinite approval.
    ///  Requirements:
    ///  - `spender` cannot be the zero address.
    function approve(address spender, uint256 amount) virtual override public returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    ///  @dev See {IERC20-transferFrom}.
    ///  Emits an {Approval} event indicating the updated allowance. This is not
    ///  required by the EIP. See the note at the beginning of {ERC20}.
    ///  NOTE: Does not update the allowance if the current allowance
    ///  is the maximum `uint256`.
    ///  Requirements:
    ///  - `from` and `to` cannot be the zero address.
    ///  - `from` must have a balance of at least `amount`.
    ///  - the caller must have allowance for ``from``'s tokens of at least
    ///  `amount`.
    function transferFrom(address from, address to, uint256 amount) virtual override public returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    ///  @dev Atomically increases the allowance granted to `spender` by the caller.
    ///  This is an alternative to {approve} that can be used as a mitigation for
    ///  problems described in {IERC20-approve}.
    ///  Emits an {Approval} event indicating the updated allowance.
    ///  Requirements:
    ///  - `spender` cannot be the zero address.
    function increaseAllowance(address spender, uint256 addedValue) virtual public returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    ///  @dev Atomically decreases the allowance granted to `spender` by the caller.
    ///  This is an alternative to {approve} that can be used as a mitigation for
    ///  problems described in {IERC20-approve}.
    ///  Emits an {Approval} event indicating the updated allowance.
    ///  Requirements:
    ///  - `spender` cannot be the zero address.
    ///  - `spender` must have allowance for the caller of at least
    ///  `subtractedValue`.
    function decreaseAllowance(address spender, uint256 subtractedValue) virtual public returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }
        return true;
    }

    ///  @dev Moves `amount` of tokens from `from` to `to`.
    ///  This internal function is equivalent to {transfer}, and can be used to
    ///  e.g. implement automatic token fees, slashing mechanisms, etc.
    ///  Emits a {Transfer} event.
    ///  Requirements:
    ///  - `from` cannot be the zero address.
    ///  - `to` cannot be the zero address.
    ///  - `from` must have a balance of at least `amount`.
    function _transfer(address from, address to, uint256 amount) virtual internal {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");
        _beforeTokenTransfer(from, to, amount);
        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            _balances[to] += amount;
        }
        emit Transfer(from, to, amount);
        _afterTokenTransfer(from, to, amount);
    }

    /// @dev Creates `amount` tokens and assigns them to `account`, increasing
    ///  the total supply.
    ///  Emits a {Transfer} event with `from` set to the zero address.
    ///  Requirements:
    ///  - `account` cannot be the zero address.
    function _mint(address account, uint256 amount) virtual internal {
        require(account != address(0), "ERC20: mint to the zero address");
        _beforeTokenTransfer(address(0), account, amount);
        _totalSupply += amount;
        unchecked {
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);
        _afterTokenTransfer(address(0), account, amount);
    }

    ///  @dev Destroys `amount` tokens from `account`, reducing the
    ///  total supply.
    ///  Emits a {Transfer} event with `to` set to the zero address.
    ///  Requirements:
    ///  - `account` cannot be the zero address.
    ///  - `account` must have at least `amount` tokens.
    function _burn(address account, uint256 amount) virtual internal {
        require(account != address(0), "ERC20: burn from the zero address");
        _beforeTokenTransfer(account, address(0), amount);
        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            _totalSupply -= amount;
        }
        emit Transfer(account, address(0), amount);
        _afterTokenTransfer(account, address(0), amount);
    }

    ///  @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
    ///  This internal function is equivalent to `approve`, and can be used to
    ///  e.g. set automatic allowances for certain subsystems, etc.
    ///  Emits an {Approval} event.
    ///  Requirements:
    ///  - `owner` cannot be the zero address.
    ///  - `spender` cannot be the zero address.
    function _approve(address owner, address spender, uint256 amount) virtual internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    ///  @dev Updates `owner` s allowance for `spender` based on spent `amount`.
    ///  Does not update the allowance amount in case of infinite allowance.
    ///  Revert if not enough allowance is available.
    ///  Might emit an {Approval} event.
    function _spendAllowance(address owner, address spender, uint256 amount) virtual internal {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    ///  @dev Hook that is called before any transfer of tokens. This includes
    ///  minting and burning.
    ///  Calling conditions:
    ///  - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
    ///  will be transferred to `to`.
    ///  - when `from` is zero, `amount` tokens will be minted for `to`.
    ///  - when `to` is zero, `amount` of ``from``'s tokens will be burned.
    ///  - `from` and `to` are never both zero.
    ///  To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
    function _beforeTokenTransfer(address from, address to, uint256 amount) virtual internal {}

    ///  @dev Hook that is called after any transfer of tokens. This includes
    ///  minting and burning.
    ///  Calling conditions:
    ///  - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
    ///  has been transferred to `to`.
    ///  - when `from` is zero, `amount` tokens have been minted for `to`.
    ///  - when `to` is zero, `amount` of ``from``'s tokens have been burned.
    ///  - `from` and `to` are never both zero.
    ///  To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
    function _afterTokenTransfer(address from, address to, uint256 amount) virtual internal {}
}

///  @dev Extension of {ERC20} that allows token holders to destroy both their own
///  tokens and those that they have an allowance for, in a way that can be
///  recognized off-chain (via event analysis).
abstract contract ERC20BurnableUpgradeable is Initializable, ContextUpgradeable, ERC20Upgradeable {
    ///  @dev This empty reserved space is put in place to allow future versions to add new
    ///  variables without shifting down storage in the inheritance chain.
    ///  See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
    uint256[50] private __gap;

    function __ERC20Burnable_init() internal onlyInitializing() {}

    function __ERC20Burnable_init_unchained() internal onlyInitializing() {}

    ///  @dev Destroys `amount` tokens from the caller.
    ///  See {ERC20-_burn}.
    function burn(uint256 amount) virtual public {
        _burn(_msgSender(), amount);
    }

    ///  @dev Destroys `amount` tokens from `account`, deducting from the caller's
    ///  allowance.
    ///  See {ERC20-_burn} and {ERC20-allowance}.
    ///  Requirements:
    ///  - the caller must have allowance for ``accounts``'s tokens of at least
    ///  `amount`.
    function burnFrom(address account, uint256 amount) virtual public {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }
}

///  @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
///  proxy whose upgrades are fully controlled by the current implementation.
interface IERC1822Proxiable {
    ///  @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
    ///  address.
    ///  IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
    ///  bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
    ///  function revert if invoked through a proxy.
    function proxiableUUID() external view returns (bytes32);
}

///  @dev This is the interface that {BeaconProxy} expects of its beacon.
interface IBeacon {
    ///  @dev Must return an address that can be used as a delegate call target.
    ///  {BeaconProxy} will check that this address is a contract.
    function implementation() external view returns (address);
}

///  @dev Collection of functions related to the address type
library Address {
    ///  @dev Returns true if `account` is a contract.
    ///  [IMPORTANT]
    ///  ====
    ///  It is unsafe to assume that an address for which this function returns
    ///  false is an externally-owned account (EOA) and not a contract.
    ///  Among others, `isContract` will return false for the following
    ///  types of addresses:
    ///   - an externally-owned account
    ///   - a contract in construction
    ///   - an address where a contract will be created
    ///   - an address where a contract lived, but was destroyed
    ///  ====
    ///  [IMPORTANT]
    ///  ====
    ///  You shouldn't rely on `isContract` to protect against flash loan attacks!
    ///  Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
    ///  like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
    ///  constructor.
    ///  ====
    function isContract(address account) internal view returns (bool) {
        return account.code.length > 0;
    }

    ///  @dev Replacement for Solidity's `transfer`: sends `amount` wei to
    ///  `recipient`, forwarding all available gas and reverting on errors.
    ///  https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
    ///  of certain opcodes, possibly making contracts go over the 2300 gas limit
    ///  imposed by `transfer`, making them unable to receive funds via
    ///  `transfer`. {sendValue} removes this limitation.
    ///  https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
    ///  IMPORTANT: because control is transferred to `recipient`, care must be
    ///  taken to not create reentrancy vulnerabilities. Consider using
    ///  {ReentrancyGuard} or the
    ///  https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");
        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    ///  @dev Performs a Solidity function call using a low level `call`. A
    ///  plain `call` is an unsafe replacement for a function call: use this
    ///  function instead.
    ///  If `target` reverts with a revert reason, it is bubbled up by this
    ///  function (like regular Solidity function calls).
    ///  Returns the raw returned data. To convert to the expected return value,
    ///  use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
    ///  Requirements:
    ///  - `target` must be a contract.
    ///  - calling `target` with `data` must not revert.
    ///  _Available since v3.1._
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
    ///  `errorMessage` as a fallback revert reason when `target` reverts.
    ///  _Available since v3.1._
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
    ///  but also transferring `value` wei to `target`.
    ///  Requirements:
    ///  - the calling contract must have an ETH balance of at least `value`.
    ///  - the called Solidity function must be `payable`.
    ///  _Available since v3.1._
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    ///  @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
    ///  with `errorMessage` as a fallback revert reason when `target` reverts.
    ///  _Available since v3.1._
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
    ///  but performing a static call.
    ///  _Available since v3.3._
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
    ///  but performing a static call.
    ///  _Available since v3.3._
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
    ///  but performing a delegate call.
    ///  _Available since v3.4._
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    ///  @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
    ///  but performing a delegate call.
    ///  _Available since v3.4._
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    ///  @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
    ///  the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
    ///  _Available since v4.8._
    function verifyCallResultFromTarget(address target, bool success, bytes memory returndata, string memory errorMessage) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    ///  @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
    ///  revert reason or using the provided one.
    ///  _Available since v4.3._
    function verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        if (returndata.length > 0) {
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

///  @dev Library for reading and writing primitive types to specific storage slots.
///  Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
///  This library helps with reading and writing to such slots without the need for inline assembly.
///  The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
///  Example usage to set ERC1967 implementation slot:
///  ```
///  contract ERC1967 {
///      bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
///      function _getImplementation() internal view returns (address) {
///          return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
///      }
///      function _setImplementation(address newImplementation) internal {
///          require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
///          StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
///      }
///  }
///  ```
///  _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    ///  @dev Returns an `AddressSlot` with member `value` located at `slot`.
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `BooleanSlot` with member `value` located at `slot`.
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    ///  @dev Returns an `Uint256Slot` with member `value` located at `slot`.
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }
}

///  @dev This abstract contract provides getters and event emitting update functions for
///  https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
///  _Available since v4.1._
///  @custom:oz-upgrades-unsafe-allow delegatecall
abstract contract ERC1967Upgrade {
    ///  @dev Emitted when the implementation is upgraded.
    event Upgraded(address indexed implementation);

    ///  @dev Emitted when the admin account has changed.
    event AdminChanged(address previousAdmin, address newAdmin);

    ///  @dev Emitted when the beacon is upgraded.
    event BeaconUpgraded(address indexed beacon);

    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;
    ///  @dev Storage slot with the address of the current implementation.
    ///  This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
    ///  validated in the constructor.
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
    ///  @dev Storage slot with the admin of the contract.
    ///  This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
    ///  validated in the constructor.
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;
    ///  @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
    ///  This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    ///  @dev Returns the current implementation address.
    function _getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    ///  @dev Stores a new address in the EIP1967 implementation slot.
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    ///  @dev Perform implementation upgrade
    ///  Emits an {Upgraded} event.
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    ///  @dev Perform implementation upgrade with additional setup call.
    ///  Emits an {Upgraded} event.
    function _upgradeToAndCall(address newImplementation, bytes memory data, bool forceCall) internal {
        _upgradeTo(newImplementation);
        if ((data.length > 0) || forceCall) {
            Address.functionDelegateCall(newImplementation, data);
        }
    }

    ///  @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
    ///  Emits an {Upgraded} event.
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data, bool forceCall) internal {
        if (StorageSlot.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    ///  @dev Returns the current admin.
    function _getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(_ADMIN_SLOT).value;
    }

    ///  @dev Stores a new address in the EIP1967 admin slot.
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlot.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    ///  @dev Changes the admin of the proxy.
    ///  Emits an {AdminChanged} event.
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    ///  @dev Returns the current beacon.
    function _getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(_BEACON_SLOT).value;
    }

    ///  @dev Stores a new beacon in the EIP1967 beacon slot.
    function _setBeacon(address newBeacon) private {
        require(Address.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(Address.isContract(IBeacon(newBeacon).implementation()), "ERC1967: beacon implementation is not a contract");
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    ///  @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
    ///  not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
    ///  Emits a {BeaconUpgraded} event.
    function _upgradeBeaconToAndCall(address newBeacon, bytes memory data, bool forceCall) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if ((data.length > 0) || forceCall) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        }
    }
}

///  @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
///  instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
///  be specified by overriding the virtual {_implementation} function.
///  Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
///  different contract through the {_delegate} function.
///  The success and return data of the delegated call will be returned back to the caller of the proxy.
abstract contract Proxy {
    ///  @dev Delegates the current call to `implementation`.
    ///  This function does not return to its internal call site, it will return directly to the external caller.
    function _delegate(address implementation) virtual internal {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    ///  @dev This is a virtual function that should be overridden so it returns the address to which the fallback function
    ///  and {_fallback} should delegate.
    function _implementation() virtual internal view returns (address);

    ///  @dev Delegates the current call to the address returned by `_implementation()`.
    ///  This function does not return to its internal call site, it will return directly to the external caller.
    function _fallback() virtual internal {
        _beforeFallback();
        _delegate(_implementation());
    }

    ///  @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
    ///  function in the contract matches the call data.
    fallback() virtual external payable {
        _fallback();
    }

    ///  @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if call data
    ///  is empty.
    receive() virtual external payable {
        _fallback();
    }

    ///  @dev Hook that is called before falling back to the implementation. Can happen as part of a manual `_fallback`
    ///  call, or as part of the Solidity `fallback` or `receive` functions.
    ///  If overridden should call `super._beforeFallback()`.
    function _beforeFallback() virtual internal {}
}

///  @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
///  implementation address that can be changed. This address is stored in storage in the location specified by
///  https://eips.ethereum.org/EIPS/eip-1967[EIP1967], so that it doesn't conflict with the storage layout of the
///  implementation behind the proxy.
contract ERC1967Proxy is Proxy, ERC1967Upgrade {
    ///  @dev Initializes the upgradeable proxy with an initial implementation specified by `_logic`.
    ///  If `_data` is nonempty, it's used as data in a delegate call to `_logic`. This will typically be an encoded
    ///  function call, and allows initializing the storage of the proxy like a Solidity constructor.
    constructor(address _logic, bytes memory _data) payable {
        _upgradeToAndCall(_logic, _data, false);
    }

    ///  @dev Returns the current implementation address.
    function _implementation() virtual override internal view returns (address impl) {
        return ERC1967Upgrade._getImplementation();
    }
}

contract ERC1967ProxyHarness is ERC1967Proxy {
    constructor(address _logic, bytes memory _data) payable ERC1967Proxy(_logic,_data) {}
}

/// @author HY Lim 2022
contract MakeWorldPeace is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, PausableUpgradeable, OwnableUpgradeable, UUPSUpgradeable {
    uint internal latestMintedTime;
    uint internal maxSupplyWithinTimeInterval;
    uint internal timeIntervalSeconds;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize() virtual public initializer() {
        __ERC20_init("MakeWorldPeace", "MWP");
        __ERC20Burnable_init();
        __Pausable_init();
        __Ownable_init();
        __UUPSUpgradeable_init();
        _mint(msg.sender, 20220311 * (10 ** decimals()));
        latestMintedTime = block.timestamp;
        timeIntervalSeconds = 3 * 60;
        maxSupplyWithinTimeInterval = 10000 * (10 ** decimals());
    }

    function pause() virtual public onlyOwner() {
        _pause();
    }

    function unpause() virtual public onlyOwner() {
        _unpause();
    }

    function mint(address to, uint256 amount) virtual public onlyOwner() {
        if (block.timestamp < (latestMintedTime + timeIntervalSeconds)) {
            require(amount <= maxSupplyWithinTimeInterval, "Exceed maximum allowed supply (10,000) within 3 minutes.");
        }
        _mint(to, amount);
        latestMintedTime = block.timestamp;
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) virtual override internal whenNotPaused() {
        super._beforeTokenTransfer(from, to, amount);
    }

    function _authorizeUpgrade(address newImplementation) override internal onlyOwner() {}

    function burn_supply(uint256 amount) virtual public onlyOwner() {
        require(balanceOf(msg.sender) >= amount, "Failed attempt to burn tokens where requested burn tokens is more than owned tokens");
        burn(amount);
    }
}

/// @author HY Lim 2022
contract MakeWorldPeaceV2 is MakeWorldPeace, AccessControlUpgradeable {
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
    bool private upgradedToV2;

    function upgradeToV2() public {
        require(!upgradedToV2, "This function can be only called once and should be the first function to be called after the upgrade progress!");
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(PAUSER_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
        _grantRole(BURNER_ROLE, msg.sender);
        upgradedToV2 = true;
    }

    function pause() override public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() override public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function mint(address to, uint256 amount) override public onlyRole(MINTER_ROLE) {
        if (block.timestamp >= (latestMintedTime + timeIntervalSeconds)) {
            require(amount <= maxSupplyWithinTimeInterval, "Exceed maximum allowed supply (10,000) within 30 seconds.");
        }
        _mint(to, amount);
        latestMintedTime = block.timestamp;
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) virtual override internal whenNotPaused() {
        super._beforeTokenTransfer(from, to, amount);
        require(upgradedToV2, "Please contact deployed contract owner to update contract to V2 via function.");
    }

    function burn_supply(uint256 amount) override public onlyRole(BURNER_ROLE) {
        require(balanceOf(msg.sender) >= amount, "Failed attempt to burn tokens where requested burn tokens is more than owned tokens");
        burn(amount);
    }
}

/// @author HY Lim 2022
contract MakeWorldPeaceV3 is MakeWorldPeaceV2 {
    function burn(uint256 amount) override public onlyRole(BURNER_ROLE) {
        super.burn(amount);
    }

    function burnFrom(address account, uint256 amount) override public onlyRole(BURNER_ROLE) {
        super.burnFrom(account, amount);
    }
}